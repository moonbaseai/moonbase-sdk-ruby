# typed: strong

module Moonbase
  module Resources
    class AgentSettings
      sig do
        params(request_options: Moonbase::RequestOptions::OrHash).returns(
          Moonbase::Models::AgentSettingRetrieveResponse
        )
      end
      def retrieve(request_options: {})
      end

      sig do
        params(
          deal_summary_prompt: String,
          meeting_prebrief_prompt: String,
          meeting_summary_prompt: String,
          meeting_web_search: T::Boolean,
          organization_info: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Models::AgentSettingUpdateResponse)
      end
      def update(
        deal_summary_prompt: nil,
        meeting_prebrief_prompt: nil,
        meeting_summary_prompt: nil,
        meeting_web_search: nil,
        organization_info: nil,
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
