# typed: strong

module Moonbase
  module Resources
    class Collections
      class Fields
        # Retrieves the details of a field in a collection.
        sig do
          params(
            id: String,
            collection_id: String,
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(Moonbase::Field)
        end
        def retrieve(
          # The ID or `ref` of the Field to retrieve.
          id,
          # The ID or `ref` of the Collection the field belongs to.
          collection_id:,
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
end
