# typed: strong

module Moonbase
  module Models
    class SocialProfileLinkedInParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::SocialProfileLinkedInParam,
            Moonbase::Internal::AnyHash
          )
        end

      # The full URL to the LinkedIn profile.
      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { params(url: String).void }
      attr_writer :url

      # The LinkedIn username, including the prefix 'company/' for company pages or
      # 'in/' for personal profiles.
      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      # Social media profile information including both the full URL and extracted
      # username.
      sig { params(url: String, username: String).returns(T.attached_class) }
      def self.new(
        # The full URL to the LinkedIn profile.
        url: nil,
        # The LinkedIn username, including the prefix 'company/' for company pages or
        # 'in/' for personal profiles.
        username: nil
      )
      end

      sig { override.returns({ url: String, username: String }) }
      def to_hash
      end
    end
  end
end
