# typed: strong

module Moonbase
  module Resources
    class Views
      sig { returns(Moonbase::Resources::Views::Items) }
      attr_reader :items

      # Retrieves the details of an existing view.
      sig do
        params(
          id: String,
          include: T::Array[Moonbase::ViewRetrieveParams::Include::OrSymbol],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Models::ViewRetrieveResponse)
      end
      def retrieve(
        # The ID of the view to retrieve.
        id,
        # Specifies which related objects to include in the response. Valid option is
        # `collection`.
        include: nil,
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
