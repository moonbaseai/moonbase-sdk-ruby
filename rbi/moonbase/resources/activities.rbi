# typed: strong

module Moonbase
  module Resources
    # View activities and capture calls
    class Activities
      # Retrieves the details of an existing activity.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Activity)
      end
      def retrieve(
        # The ID of the Activity to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a list of activities.
      sig do
        params(
          after: String,
          before: String,
          constituent_entity_id:
            Moonbase::ActivityListParams::ConstituentEntityID::OrHash,
          constituent_entity_type:
            Moonbase::ActivityListParams::ConstituentEntityType::OrHash,
          constituent_relation:
            Moonbase::ActivityListParams::ConstituentRelation::OrHash,
          limit: Integer,
          occurred_at: Moonbase::ActivityListParams::OccurredAt::OrHash,
          type: Moonbase::ActivityListParams::Type::OrHash,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Internal::CursorPage[Moonbase::Activity])
      end
      def list(
        # When specified, returns results starting immediately after the item identified
        # by this cursor. Use the cursor value from the previous response's metadata to
        # fetch the next page of results.
        after: nil,
        # When specified, returns results starting immediately before the item identified
        # by this cursor. Use the cursor value from the response's metadata to fetch the
        # previous page of results.
        before: nil,
        # Filter activities by which entities were involved. Must be paired with
        # constituent_entity_type.
        constituent_entity_id: nil,
        # Filter activities by which entities were involved. Must be paired with
        # constituent_entity_id.
        constituent_entity_type: nil,
        # Filter activities by which entities were involved via specific relations. Must
        # be paired with constituent_entity_type and constituent_entity_id.
        constituent_relation: nil,
        # Maximum number of items to return per page. Must be between 1 and 100. Defaults
        # to 20 if not specified.
        limit: nil,
        # Filter activities by when they occurred.
        occurred_at: nil,
        # Filter activities by type.
        type: nil,
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
