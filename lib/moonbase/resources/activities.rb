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
      # @return [Moonbase::Models::Activity::ActivityCallOccurred, Moonbase::Models::Activity::ActivityFormSubmitted, Moonbase::Models::Activity::ActivityInboxMessageSent, Moonbase::Models::Activity::ActivityItemCreated, Moonbase::Models::Activity::ActivityItemMentioned, Moonbase::Models::Activity::ActivityMeetingHeld, Moonbase::Models::Activity::ActivityMeetingScheduled, Moonbase::Models::Activity::ActivityNoteCreated, Moonbase::Models::Activity::ActivityProgramMessageBounced, Moonbase::Models::Activity::ActivityProgramMessageClicked, Moonbase::Models::Activity::ActivityProgramMessageComplained, Moonbase::Models::Activity::ActivityProgramMessageFailed, Moonbase::Models::Activity::ActivityProgramMessageOpened, Moonbase::Models::Activity::ActivityProgramMessageSent, Moonbase::Models::Activity::ActivityProgramMessageShielded, Moonbase::Models::Activity::ActivityProgramMessageUnsubscribed]
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
      # @overload list(after: nil, before: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Activity::ActivityCallOccurred, Moonbase::Models::Activity::ActivityFormSubmitted, Moonbase::Models::Activity::ActivityInboxMessageSent, Moonbase::Models::Activity::ActivityItemCreated, Moonbase::Models::Activity::ActivityItemMentioned, Moonbase::Models::Activity::ActivityMeetingHeld, Moonbase::Models::Activity::ActivityMeetingScheduled, Moonbase::Models::Activity::ActivityNoteCreated, Moonbase::Models::Activity::ActivityProgramMessageBounced, Moonbase::Models::Activity::ActivityProgramMessageClicked, Moonbase::Models::Activity::ActivityProgramMessageComplained, Moonbase::Models::Activity::ActivityProgramMessageFailed, Moonbase::Models::Activity::ActivityProgramMessageOpened, Moonbase::Models::Activity::ActivityProgramMessageSent, Moonbase::Models::Activity::ActivityProgramMessageShielded, Moonbase::Models::Activity::ActivityProgramMessageUnsubscribed>]
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
