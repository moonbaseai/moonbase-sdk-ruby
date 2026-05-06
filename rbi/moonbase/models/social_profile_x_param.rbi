# typed: strong

module Moonbase
  module Models
    class SocialProfileXParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::SocialProfileXParam, Moonbase::Internal::AnyHash)
        end

      # The full URL to the X profile, starting with 'https://x.com/'
      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { params(url: String).void }
      attr_writer :url

      # The X username, up to 15 characters long, containing only lowercase letters
      # (a-z), uppercase letters (A-Z), numbers (0-9), and underscores (\_). Does not
      # include the '@' symbol prefix.
      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      # Social media profile information including both the full URL and extracted
      # username.
      sig { params(url: String, username: String).returns(T.attached_class) }
      def self.new(
        # The full URL to the X profile, starting with 'https://x.com/'
        url: nil,
        # The X username, up to 15 characters long, containing only lowercase letters
        # (a-z), uppercase letters (A-Z), numbers (0-9), and underscores (\_). Does not
        # include the '@' symbol prefix.
        username: nil
      )
      end

      sig { override.returns({ url: String, username: String }) }
      def to_hash
      end
    end
  end
end
