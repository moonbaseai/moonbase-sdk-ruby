# typed: strong

module Moonbase
  module Models
    class AgentSettingRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Moonbase::AgentSettingRetrieveParams,
            Moonbase::Internal::AnyHash
          )
        end

      sig do
        params(request_options: Moonbase::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Moonbase::RequestOptions }) }
      def to_hash
      end
    end
  end
end
