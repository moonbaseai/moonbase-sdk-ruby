# typed: strong

module MoonbaseSDK
  module Models
    class SocialXValue < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::SocialXValue, MoonbaseSDK::Internal::AnyHash)
        end

      sig { returns(MoonbaseSDK::SocialXValue::Profile) }
      attr_reader :profile

      sig { params(profile: MoonbaseSDK::SocialXValue::Profile::OrHash).void }
      attr_writer :profile

      sig { returns(Symbol) }
      attr_accessor :type

      # X (formerly Twitter) username
      sig do
        params(
          profile: MoonbaseSDK::SocialXValue::Profile::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(profile:, type: :"value/uri/social_x")
      end

      sig do
        override.returns(
          { profile: MoonbaseSDK::SocialXValue::Profile, type: Symbol }
        )
      end
      def to_hash
      end

      class Profile < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::SocialXValue::Profile,
              MoonbaseSDK::Internal::AnyHash
            )
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
