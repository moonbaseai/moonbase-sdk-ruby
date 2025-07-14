# frozen_string_literal: true

module Moonbase
  module Resources
    class Collections
      class Fields
        # Retrieves the details of a field in a collection.
        #
        # @overload retrieve(id, collection_id:, request_options: {})
        #
        # @param id [String] The ID or `ref` of the Field to retrieve.
        #
        # @param collection_id [String] The ID or `ref` of the Collection the field belongs to.
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Moonbase::Models::Field]
        #
        # @see Moonbase::Models::Collections::FieldRetrieveParams
        def retrieve(id, params)
          parsed, options = Moonbase::Collections::FieldRetrieveParams.dump_request(params)
          collection_id =
            parsed.delete(:collection_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["collections/%1$s/fields/%2$s", collection_id, id],
            model: Moonbase::Field,
            options: options
          )
        end

        # @api private
        #
        # @param client [Moonbase::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
