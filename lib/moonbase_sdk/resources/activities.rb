# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class Activities
      # Retrieves the details of an existing activity.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the Activity to retrieve.
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::Activity::ActivityCallOccurred, MoonbaseSDK::Models::Activity::ActivityFormSubmitted, MoonbaseSDK::Models::Activity::ActivityInboxMessageSent, MoonbaseSDK::Models::Activity::ActivityItemCreated, MoonbaseSDK::Models::Activity::ActivityItemMentioned, MoonbaseSDK::Models::Activity::ActivityMeetingHeld, MoonbaseSDK::Models::Activity::ActivityMeetingScheduled, MoonbaseSDK::Models::Activity::ActivityNoteCreated, MoonbaseSDK::Models::Activity::ActivityProgramMessageBounced, MoonbaseSDK::Models::Activity::ActivityProgramMessageClicked, MoonbaseSDK::Models::Activity::ActivityProgramMessageComplained, MoonbaseSDK::Models::Activity::ActivityProgramMessageFailed, MoonbaseSDK::Models::Activity::ActivityProgramMessageOpened, MoonbaseSDK::Models::Activity::ActivityProgramMessageSent, MoonbaseSDK::Models::Activity::ActivityProgramMessageShielded, MoonbaseSDK::Models::Activity::ActivityProgramMessageUnsubscribed]
      #
      # @see MoonbaseSDK::Models::ActivityRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["activities/%1$s", id],
          model: MoonbaseSDK::Activity,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::ActivityListParams} for more details.
      #
      # Returns a list of activities.
      #
      # @overload list(after: nil, before: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Internal::CursorPage<MoonbaseSDK::Models::Activity::ActivityCallOccurred, MoonbaseSDK::Models::Activity::ActivityFormSubmitted, MoonbaseSDK::Models::Activity::ActivityInboxMessageSent, MoonbaseSDK::Models::Activity::ActivityItemCreated, MoonbaseSDK::Models::Activity::ActivityItemMentioned, MoonbaseSDK::Models::Activity::ActivityMeetingHeld, MoonbaseSDK::Models::Activity::ActivityMeetingScheduled, MoonbaseSDK::Models::Activity::ActivityNoteCreated, MoonbaseSDK::Models::Activity::ActivityProgramMessageBounced, MoonbaseSDK::Models::Activity::ActivityProgramMessageClicked, MoonbaseSDK::Models::Activity::ActivityProgramMessageComplained, MoonbaseSDK::Models::Activity::ActivityProgramMessageFailed, MoonbaseSDK::Models::Activity::ActivityProgramMessageOpened, MoonbaseSDK::Models::Activity::ActivityProgramMessageSent, MoonbaseSDK::Models::Activity::ActivityProgramMessageShielded, MoonbaseSDK::Models::Activity::ActivityProgramMessageUnsubscribed>]
      #
      # @see MoonbaseSDK::Models::ActivityListParams
      def list(params = {})
        parsed, options = MoonbaseSDK::ActivityListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "activities",
          query: parsed,
          page: MoonbaseSDK::Internal::CursorPage,
          model: MoonbaseSDK::Activity,
          options: options
        )
      end

      # @api private
      #
      # @param client [MoonbaseSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
