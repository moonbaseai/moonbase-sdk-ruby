# typed: strong

module Moonbase
  module Resources
    class Items
      # Returns items that match the search query.
      sig do
        params(
          query: String,
          filter: Moonbase::ItemSearchParams::Filter::OrHash,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Models::ItemSearchResponse)
      end
      def search(
        # The search text to match against items.
        query:,
        # Filter results by one or more collection IDs or `ref` values.
        filter: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Moonbase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
