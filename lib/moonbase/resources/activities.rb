# frozen_string_literal: true

module Moonbase
  module Resources
    class Activities
      # Retrieves the details of an existing activity.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the Activity to retrieve.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::ActivityCallOccurred, Moonbase::Models::ActivityFormSubmitted, Moonbase::Models::ActivityInboxMessageSent, Moonbase::Models::ActivityItemCreated, Moonbase::Models::ActivityItemMentioned, Moonbase::Models::ActivityItemMerged, Moonbase::Models::Activity::ActivityFileCreated, Moonbase::Models::ActivityMeetingHeld, Moonbase::Models::ActivityMeetingScheduled, Moonbase::Models::ActivityNoteCreated, Moonbase::Models::ActivityProgramMessageBounced, Moonbase::Models::ActivityProgramMessageClicked, Moonbase::Models::ActivityProgramMessageComplained, Moonbase::Models::ActivityProgramMessageFailed, Moonbase::Models::ActivityProgramMessageOpened, Moonbase::Models::ActivityProgramMessageSent, Moonbase::Models::ActivityProgramMessageShielded, Moonbase::Models::ActivityProgramMessageUnsubscribed]
      #
      # @see Moonbase::Models::ActivityRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["activities/%1$s", id],
          model: Moonbase::Activity,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::ActivityListParams} for more details.
      #
      # Returns a list of activities.
      #
      # @overload list(after: nil, before: nil, filter: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param filter [Moonbase::Models::ActivityListParams::Filter] Filter activities by type, date, or item.
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::ActivityCallOccurred, Moonbase::Models::ActivityFormSubmitted, Moonbase::Models::ActivityInboxMessageSent, Moonbase::Models::ActivityItemCreated, Moonbase::Models::ActivityItemMentioned, Moonbase::Models::ActivityItemMerged, Moonbase::Models::Activity::ActivityFileCreated, Moonbase::Models::ActivityMeetingHeld, Moonbase::Models::ActivityMeetingScheduled, Moonbase::Models::ActivityNoteCreated, Moonbase::Models::ActivityProgramMessageBounced, Moonbase::Models::ActivityProgramMessageClicked, Moonbase::Models::ActivityProgramMessageComplained, Moonbase::Models::ActivityProgramMessageFailed, Moonbase::Models::ActivityProgramMessageOpened, Moonbase::Models::ActivityProgramMessageSent, Moonbase::Models::ActivityProgramMessageShielded, Moonbase::Models::ActivityProgramMessageUnsubscribed>]
      #
      # @see Moonbase::Models::ActivityListParams
      def list(params = {})
        parsed, options = Moonbase::ActivityListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "activities",
          query: parsed,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Activity,
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
