# typed: strong

module Moonbase
  module Models
    class AgentSettingUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::AgentSettingUpdateParams, Moonbase::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :deal_summary_prompt

      sig { params(deal_summary_prompt: String).void }
      attr_writer :deal_summary_prompt

      sig { returns(T.nilable(String)) }
      attr_reader :meeting_prebrief_prompt

      sig { params(meeting_prebrief_prompt: String).void }
      attr_writer :meeting_prebrief_prompt

      sig { returns(T.nilable(String)) }
      attr_reader :meeting_summary_prompt

      sig { params(meeting_summary_prompt: String).void }
      attr_writer :meeting_summary_prompt

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :meeting_web_search

      sig { params(meeting_web_search: T::Boolean).void }
      attr_writer :meeting_web_search

      sig { returns(T.nilable(String)) }
      attr_reader :organization_info

      sig { params(organization_info: String).void }
      attr_writer :organization_info

      sig do
        params(
          deal_summary_prompt: String,
          meeting_prebrief_prompt: String,
          meeting_summary_prompt: String,
          meeting_web_search: T::Boolean,
          organization_info: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        deal_summary_prompt: nil,
        meeting_prebrief_prompt: nil,
        meeting_summary_prompt: nil,
        meeting_web_search: nil,
        organization_info: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            deal_summary_prompt: String,
            meeting_prebrief_prompt: String,
            meeting_summary_prompt: String,
            meeting_web_search: T::Boolean,
            organization_info: String,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
