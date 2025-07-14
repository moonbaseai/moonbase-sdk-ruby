# typed: strong

module Moonbase
  module Models
    class SocialXValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::SocialXValue, Moonbase::Internal::AnyHash)
        end

      sig { returns(Moonbase::SocialXValue::Profile) }
      attr_reader :profile

      sig { params(profile: Moonbase::SocialXValue::Profile::OrHash).void }
      attr_writer :profile

      sig { returns(Symbol) }
      attr_accessor :type

      # X (formerly Twitter) username
      sig do
        params(
          profile: Moonbase::SocialXValue::Profile::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(profile:, type: :"value/uri/social_x")
      end

      sig do
        override.returns(
          { profile: Moonbase::SocialXValue::Profile, type: Symbol }
        )
      end
      def to_hash
      end

      class Profile < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::SocialXValue::Profile, Moonbase::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig { returns(T.nilable(String)) }
        attr_reader :username

        sig { params(username: String).void }
        attr_writer :username

        sig { params(url: String, username: String).returns(T.attached_class) }
        def self.new(url: nil, username: nil)
        end

        sig { override.returns({ url: String, username: String }) }
        def to_hash
        end
      end
    end
  end
end
