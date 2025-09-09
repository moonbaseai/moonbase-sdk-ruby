# typed: strong

module Moonbase
  module Models
    class SocialXValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::SocialXValue, Moonbase::Internal::AnyHash)
        end

      # Social media profile information including both the full URL and extracted
      # username.
      sig { returns(Moonbase::SocialXValue::Data) }
      attr_reader :data

      sig { params(data: Moonbase::SocialXValue::Data::OrHash).void }
      attr_writer :data

      sig { returns(Symbol) }
      attr_accessor :type

      # The social media profile for the X (formerly Twitter) platform
      sig do
        params(
          data: Moonbase::SocialXValue::Data::OrHash,
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
        override.returns({ data: Moonbase::SocialXValue::Data, type: Symbol })
      end
      def to_hash
      end

      class Data < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::SocialXValue::Data, Moonbase::Internal::AnyHash)
          end

        # The full URL to the X profile, starting with 'https://x.com/'
        sig { returns(String) }
        attr_accessor :url

        # The X username, up to 15 characters long, containing only lowercase letters
        # (a-z), uppercase letters (A-Z), numbers (0-9), and underscores (\_). Does not
        # include the '@' symbol prefix.
        sig { returns(String) }
        attr_accessor :username

        # Social media profile information including both the full URL and extracted
        # username.
        sig { params(url: String, username: String).returns(T.attached_class) }
        def self.new(
          # The full URL to the X profile, starting with 'https://x.com/'
          url:,
          # The X username, up to 15 characters long, containing only lowercase letters
          # (a-z), uppercase letters (A-Z), numbers (0-9), and underscores (\_). Does not
          # include the '@' symbol prefix.
          username:
        )
        end

        sig { override.returns({ url: String, username: String }) }
        def to_hash
        end
      end
    end
  end
end
