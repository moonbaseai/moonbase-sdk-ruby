# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Activities#list
    class ActivityListParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute after
      #   When specified, returns results starting immediately after the item identified
      #   by this cursor. Use the cursor value from the previous response's metadata to
      #   fetch the next page of results.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   When specified, returns results starting immediately before the item identified
      #   by this cursor. Use the cursor value from the response's metadata to fetch the
      #   previous page of results.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute constituent_entity_id
      #   Filter activities by which entities were involved. Must be paired with
      #   constituent_entity_type.
      #
      #   @return [Moonbase::Models::ActivityListParams::ConstituentEntityID, nil]
      optional :constituent_entity_id, -> { Moonbase::ActivityListParams::ConstituentEntityID }

      # @!attribute constituent_entity_type
      #   Filter activities by which entities were involved. Must be paired with
      #   constituent_entity_id.
      #
      #   @return [Moonbase::Models::ActivityListParams::ConstituentEntityType, nil]
      optional :constituent_entity_type, -> { Moonbase::ActivityListParams::ConstituentEntityType }

      # @!attribute constituent_relation
      #   Filter activities by which entities were involved via specific relations. Must
      #   be paired with constituent_entity_type and constituent_entity_id.
      #
      #   @return [Moonbase::Models::ActivityListParams::ConstituentRelation, nil]
      optional :constituent_relation, -> { Moonbase::ActivityListParams::ConstituentRelation }

      # @!attribute limit
      #   Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #   to 20 if not specified.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute occurred_at
      #   Filter activities by when they occurred.
      #
      #   @return [Moonbase::Models::ActivityListParams::OccurredAt, nil]
      optional :occurred_at, -> { Moonbase::ActivityListParams::OccurredAt }

      # @!attribute type
      #   Filter activities by type.
      #
      #   @return [Moonbase::Models::ActivityListParams::Type, nil]
      optional :type, -> { Moonbase::ActivityListParams::Type }

      # @!method initialize(after: nil, before: nil, constituent_entity_id: nil, constituent_entity_type: nil, constituent_relation: nil, limit: nil, occurred_at: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ActivityListParams} for more details.
      #
      #   @param after [String] When specified, returns results starting immediately after the item identified b
      #
      #   @param before [String] When specified, returns results starting immediately before the item identified
      #
      #   @param constituent_entity_id [Moonbase::Models::ActivityListParams::ConstituentEntityID] Filter activities by which entities were involved. Must be paired with constitue
      #
      #   @param constituent_entity_type [Moonbase::Models::ActivityListParams::ConstituentEntityType] Filter activities by which entities were involved. Must be paired with constitue
      #
      #   @param constituent_relation [Moonbase::Models::ActivityListParams::ConstituentRelation] Filter activities by which entities were involved via specific relations. Must b
      #
      #   @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      #   @param occurred_at [Moonbase::Models::ActivityListParams::OccurredAt] Filter activities by when they occurred.
      #
      #   @param type [Moonbase::Models::ActivityListParams::Type] Filter activities by type.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class ConstituentEntityID < Moonbase::Internal::Type::BaseModel
        # @!attribute eq
        #
        #   @return [String, nil]
        optional :eq, String

        # @!method initialize(eq: nil)
        #   Filter activities by which entities were involved. Must be paired with
        #   constituent_entity_type.
        #
        #   @param eq [String]
      end

      class ConstituentEntityType < Moonbase::Internal::Type::BaseModel
        # @!attribute eq
        #   The type of the entity involved as a constituent of the activity.
        #
        #   @return [Symbol, Moonbase::Models::ActivityListParams::ConstituentEntityType::Eq, nil]
        optional :eq, enum: -> { Moonbase::ActivityListParams::ConstituentEntityType::Eq }

        # @!method initialize(eq: nil)
        #   Filter activities by which entities were involved. Must be paired with
        #   constituent_entity_id.
        #
        #   @param eq [Symbol, Moonbase::Models::ActivityListParams::ConstituentEntityType::Eq] The type of the entity involved as a constituent of the activity.

        # The type of the entity involved as a constituent of the activity.
        #
        # @see Moonbase::Models::ActivityListParams::ConstituentEntityType#eq
        module Eq
          extend Moonbase::Internal::Type::Enum

          CALL = :call
          COLLECTION = :collection
          EMAIL_MESSAGE = :email_message
          FILE = :file
          ITEM = :item
          MEETING = :meeting
          NOTE = :note
          PROGRAM = :program
          PROGRAM_MESSAGE = :program_message
          PROGRAM_TEMPLATE = :program_template
          UNSUBSCRIBE = :unsubscribe

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class ConstituentRelation < Moonbase::Internal::Type::BaseModel
        # @!attribute eq
        #
        #   @return [Symbol, Moonbase::Models::ActivityListParams::ConstituentRelation::Eq, nil]
        optional :eq, enum: -> { Moonbase::ActivityListParams::ConstituentRelation::Eq }

        # @!method initialize(eq: nil)
        #   Filter activities by which entities were involved via specific relations. Must
        #   be paired with constituent_entity_type and constituent_entity_id.
        #
        #   @param eq [Symbol, Moonbase::Models::ActivityListParams::ConstituentRelation::Eq]

        # @see Moonbase::Models::ActivityListParams::ConstituentRelation#eq
        module Eq
          extend Moonbase::Internal::Type::Enum

          ACTOR = :actor
          OBJECT = :object
          TARGET = :target

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class OccurredAt < Moonbase::Internal::Type::BaseModel
        # @!attribute gte
        #
        #   @return [Time, nil]
        optional :gte, Time

        # @!attribute lte
        #
        #   @return [Time, nil]
        optional :lte, Time

        # @!method initialize(gte: nil, lte: nil)
        #   Filter activities by when they occurred.
        #
        #   @param gte [Time]
        #   @param lte [Time]
      end

      class Type < Moonbase::Internal::Type::BaseModel
        # @!attribute eq
        #
        #   @return [Symbol, Moonbase::Models::ActivityListParams::Type::Eq, nil]
        optional :eq, enum: -> { Moonbase::ActivityListParams::Type::Eq }

        # @!method initialize(eq: nil)
        #   Filter activities by type.
        #
        #   @param eq [Symbol, Moonbase::Models::ActivityListParams::Type::Eq]

        # @see Moonbase::Models::ActivityListParams::Type#eq
        module Eq
          extend Moonbase::Internal::Type::Enum

          ACTIVITY_CALL_OCCURRED = :"activity/call_occurred"
          ACTIVITY_FORM_SUBMITTED = :"activity/form_submitted"
          ACTIVITY_INBOX_MESSAGE_SENT = :"activity/inbox_message_sent"
          ACTIVITY_ITEM_CREATED = :"activity/item_created"
          ACTIVITY_ITEM_MENTIONED = :"activity/item_mentioned"
          ACTIVITY_ITEM_MERGED = :"activity/item_merged"
          ACTIVITY_FILE_CREATED = :"activity/file_created"
          ACTIVITY_MEETING_HELD = :"activity/meeting_held"
          ACTIVITY_MEETING_SCHEDULED = :"activity/meeting_scheduled"
          ACTIVITY_NOTE_CREATED = :"activity/note_created"
          ACTIVITY_PROGRAM_MESSAGE_BOUNCED = :"activity/program_message_bounced"
          ACTIVITY_PROGRAM_MESSAGE_CLICKED = :"activity/program_message_clicked"
          ACTIVITY_PROGRAM_MESSAGE_COMPLAINED = :"activity/program_message_complained"
          ACTIVITY_PROGRAM_MESSAGE_FAILED = :"activity/program_message_failed"
          ACTIVITY_PROGRAM_MESSAGE_OPENED = :"activity/program_message_opened"
          ACTIVITY_PROGRAM_MESSAGE_SENT = :"activity/program_message_sent"
          ACTIVITY_PROGRAM_MESSAGE_SHIELDED = :"activity/program_message_shielded"
          ACTIVITY_PROGRAM_MESSAGE_UNSUBSCRIBED = :"activity/program_message_unsubscribed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
