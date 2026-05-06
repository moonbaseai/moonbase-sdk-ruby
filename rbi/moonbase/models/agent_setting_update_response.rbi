# typed: strong

module Moonbase
  module Models
    class AgentSettingUpdateResponse < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::Models::AgentSettingUpdateResponse,
            Moonbase::Internal::AnyHash
          )
        end

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

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
          created_at: Time,
          updated_at: Time,
          deal_summary_prompt: String,
          meeting_prebrief_prompt: String,
          meeting_summary_prompt: String,
          meeting_web_search: T::Boolean,
          organization_info: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        created_at:,
        updated_at:,
        deal_summary_prompt: nil,
        meeting_prebrief_prompt: nil,
        meeting_summary_prompt: nil,
        meeting_web_search: nil,
        organization_info: nil,
        type: :agent_settings
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            type: Symbol,
            updated_at: Time,
            deal_summary_prompt: String,
            meeting_prebrief_prompt: String,
            meeting_summary_prompt: String,
            meeting_web_search: T::Boolean,
            organization_info: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
