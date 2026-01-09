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

      # @!attribute filter
      #   Filter activities by type, date, or item.
      #
      #   @return [Moonbase::Models::ActivityListParams::Filter, nil]
      optional :filter, -> { Moonbase::ActivityListParams::Filter }

      # @!attribute limit
      #   Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #   to 20 if not specified.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(after: nil, before: nil, filter: nil, limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ActivityListParams} for more details.
      #
      #   @param after [String] When specified, returns results starting immediately after the item identified b
      #
      #   @param before [String] When specified, returns results starting immediately before the item identified
      #
      #   @param filter [Moonbase::Models::ActivityListParams::Filter] Filter activities by type, date, or item.
      #
      #   @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Moonbase::Internal::Type::BaseModel
        # @!attribute item_id
        #
        #   @return [Moonbase::Models::ActivityListParams::Filter::ItemID, nil]
        optional :item_id, -> { Moonbase::ActivityListParams::Filter::ItemID }

        # @!attribute occurred_at
        #
        #   @return [Moonbase::Models::ActivityListParams::Filter::OccurredAt, nil]
        optional :occurred_at, -> { Moonbase::ActivityListParams::Filter::OccurredAt }

        # @!attribute type
        #
        #   @return [Moonbase::Models::ActivityListParams::Filter::Type, nil]
        optional :type, -> { Moonbase::ActivityListParams::Filter::Type }

        # @!method initialize(item_id: nil, occurred_at: nil, type: nil)
        #   Filter activities by type, date, or item.
        #
        #   @param item_id [Moonbase::Models::ActivityListParams::Filter::ItemID]
        #   @param occurred_at [Moonbase::Models::ActivityListParams::Filter::OccurredAt]
        #   @param type [Moonbase::Models::ActivityListParams::Filter::Type]

        # @see Moonbase::Models::ActivityListParams::Filter#item_id
        class ItemID < Moonbase::Internal::Type::BaseModel
          # @!attribute eq
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   @param eq [String]
        end

        # @see Moonbase::Models::ActivityListParams::Filter#occurred_at
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
          #   @param gte [Time]
          #   @param lte [Time]
        end

        # @see Moonbase::Models::ActivityListParams::Filter#type
        class Type < Moonbase::Internal::Type::BaseModel
          # @!attribute in_
          #
          #   @return [Array<Symbol, Moonbase::Models::ActivityListParams::Filter::Type::In>, nil]
          optional :in_,
                   -> {
                     Moonbase::Internal::Type::ArrayOf[enum: Moonbase::ActivityListParams::Filter::Type::In]
                   },
                   api_name: :in

          # @!method initialize(in_: nil)
          #   @param in_ [Array<Symbol, Moonbase::Models::ActivityListParams::Filter::Type::In>]

          module In
            extend Moonbase::Internal::Type::Enum

            ACTIVITY_CALL_OCCURRED = :"activity/call_occurred"
            ACTIVITY_FORM_SUBMITTED = :"activity/form_submitted"
            ACTIVITY_INBOX_MESSAGE_SENT = :"activity/inbox_message_sent"
            ACTIVITY_ITEM_CREATED = :"activity/item_created"
            ACTIVITY_ITEM_MENTIONED = :"activity/item_mentioned"
            ACTIVITY_ITEM_MERGED = :"activity/item_merged"
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
end
