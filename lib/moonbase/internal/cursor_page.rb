# frozen_string_literal: true

module Moonbase
  module Internal
    # @generic Elem
    #
    # @example
    #   if cursor_page.has_next?
    #     cursor_page = cursor_page.next_page
    #   end
    #
    # @example
    #   cursor_page.auto_paging_each do |activity|
    #     puts(activity)
    #   end
    class CursorPage
      include Moonbase::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [Meta]
      attr_accessor :meta

      # @return [Boolean]
      def next_page?
        !data.to_a.empty? && !meta&.cursors&.next_.to_s.empty?
      end

      # @raise [Moonbase::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Moonbase::Internal::Util.deep_merge(@req, {query: {after: meta&.cursors&.next_}})
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.data&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Moonbase::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}, Net::HTTPHeader]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {data: Array => data}
          @data = data.map { Moonbase::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        case page_data
        in {meta: Hash | nil => meta}
          @meta = Moonbase::Internal::Type::Converter.coerce(Moonbase::Internal::CursorPage::Meta, meta)
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Moonbase::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)}>"
      end

      class Meta < Moonbase::Internal::Type::BaseModel
        # @!attribute cursors
        #
        #   @return [Meta::Cursors, nil]
        optional :cursors, -> { Meta::Cursors }

        # @!method initialize(cursors: nil)
        #   @param cursors [Meta::Cursors]

        # @see Meta#cursors
        class Cursors < Moonbase::Internal::Type::BaseModel
          # @!attribute next_
          #
          #   @return [String, nil]
          optional :next_, String, api_name: :next

          # @!method initialize(next_: nil)
          #   @param next_ [String]
        end
      end
    end
  end
end
