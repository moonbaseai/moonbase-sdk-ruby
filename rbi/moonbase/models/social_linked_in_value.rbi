# typed: strong

module Moonbase
  module Models
    class SocialLinkedInValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::SocialLinkedInValue, Moonbase::Internal::AnyHash)
        end

      # The social media profile for the LinkedIn platform
      sig { returns(Moonbase::SocialLinkedInValue::Data) }
      attr_reader :data

      sig { params(data: Moonbase::SocialLinkedInValue::Data::OrHash).void }
      attr_writer :data

      sig { returns(Symbol) }
      attr_accessor :type

      # The social media profile for the LinkedIn platform
      sig do
        params(
          data: Moonbase::SocialLinkedInValue::Data::OrHash,
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
          { data: Moonbase::SocialLinkedInValue::Data, type: Symbol }
        )
      end
      def to_hash
      end

      class Data < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::SocialLinkedInValue::Data,
              Moonbase::Internal::AnyHash
            )
          end

        # The full URL to the LinkedIn profile.
        sig { returns(String) }
        attr_accessor :url

        # The LinkedIn username, including the prefix 'company/' for company pages or
        # 'in/' for personal profiles.
        sig { returns(String) }
        attr_accessor :username

        # The social media profile for the LinkedIn platform
        sig { params(url: String, username: String).returns(T.attached_class) }
        def self.new(
          # The full URL to the LinkedIn profile.
          url:,
          # The LinkedIn username, including the prefix 'company/' for company pages or
          # 'in/' for personal profiles.
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
