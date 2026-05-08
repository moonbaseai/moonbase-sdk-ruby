# typed: strong

module Moonbase
  module Models
    class SocialXValueParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::SocialXValueParam, Moonbase::Internal::AnyHash)
        end

      # Social media profile information including both the full URL and extracted
      # username.
      sig { returns(Moonbase::SocialProfileXParam) }
      attr_reader :data

      sig { params(data: Moonbase::SocialProfileXParam::OrHash).void }
      attr_writer :data

      sig { returns(Symbol) }
      attr_accessor :type

      # The social media profile for the X (formerly Twitter) platform
      sig do
        params(
          data: Moonbase::SocialProfileXParam::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Social media profile information including both the full URL and extracted
        # username.
        data:,
        type: :"value/uri/social_x"
      )
      end

      sig do
        override.returns({ data: Moonbase::SocialProfileXParam, type: Symbol })
      end
      def to_hash
      end
    end
  end
end
