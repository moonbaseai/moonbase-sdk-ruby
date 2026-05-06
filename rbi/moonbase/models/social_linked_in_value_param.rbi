# typed: strong

module Moonbase
  module Models
    class SocialLinkedInValueParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::SocialLinkedInValueParam, Moonbase::Internal::AnyHash)
        end

      # The social media profile for the LinkedIn platform
      sig { returns(Moonbase::SocialProfileLinkedInParam) }
      attr_reader :data

      sig { params(data: Moonbase::SocialProfileLinkedInParam::OrHash).void }
      attr_writer :data

      sig { returns(Symbol) }
      attr_accessor :type

      # The social media profile for the LinkedIn platform
      sig do
        params(
          data: Moonbase::SocialProfileLinkedInParam::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The social media profile for the LinkedIn platform
        data:,
        type: :"value/uri/social_linked_in"
      )
      end

      sig do
        override.returns(
          { data: Moonbase::SocialProfileLinkedInParam, type: Symbol }
        )
      end
      def to_hash
      end
    end
  end
end
