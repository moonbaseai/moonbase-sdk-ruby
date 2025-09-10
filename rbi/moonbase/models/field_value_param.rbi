# typed: strong

module Moonbase
  module Models
    # A field can be null, a single value, or an array of values
    module FieldValueParam
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Moonbase::SingleLineTextValue,
            Moonbase::MultiLineTextValue,
            Moonbase::IntegerValue,
            Moonbase::FloatValue,
            Moonbase::MonetaryValue,
            Moonbase::PercentageValue,
            Moonbase::BooleanValue,
            Moonbase::EmailValue,
            Moonbase::URLValue,
            Moonbase::DomainValue,
            Moonbase::FieldValueParam::SocialXValueParam,
            Moonbase::FieldValueParam::SocialLinkedInValueParam,
            Moonbase::TelephoneNumber,
            Moonbase::GeoValue,
            Moonbase::DateValue,
            Moonbase::DatetimeValue,
            Moonbase::ChoiceValueParam,
            Moonbase::FunnelStepValueParam,
            Moonbase::RelationValueParam,
            T::Array[Moonbase::ValueParam::Variants]
          )
        end

      class SocialXValueParam < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::FieldValueParam::SocialXValueParam,
              Moonbase::Internal::AnyHash
            )
          end

        # Social media profile information including both the full URL and extracted
        # username.
        sig { returns(Moonbase::FieldValueParam::SocialXValueParam::Data) }
        attr_reader :data

        sig do
          params(
            data: Moonbase::FieldValueParam::SocialXValueParam::Data::OrHash
          ).void
        end
        attr_writer :data

        sig { returns(Symbol) }
        attr_accessor :type

        # The social media profile for the X (formerly Twitter) platform
        sig do
          params(
            data: Moonbase::FieldValueParam::SocialXValueParam::Data::OrHash,
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
          override.returns(
            {
              data: Moonbase::FieldValueParam::SocialXValueParam::Data,
              type: Symbol
            }
          )
        end
        def to_hash
        end

        class Data < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::FieldValueParam::SocialXValueParam::Data,
                Moonbase::Internal::AnyHash
              )
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
          sig do
            params(url: String, username: String).returns(T.attached_class)
          end
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

      class SocialLinkedInValueParam < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::FieldValueParam::SocialLinkedInValueParam,
              Moonbase::Internal::AnyHash
            )
          end

        # The social media profile for the LinkedIn platform
        sig do
          returns(Moonbase::FieldValueParam::SocialLinkedInValueParam::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              Moonbase::FieldValueParam::SocialLinkedInValueParam::Data::OrHash
          ).void
        end
        attr_writer :data

        sig { returns(Symbol) }
        attr_accessor :type

        # The social media profile for the LinkedIn platform
        sig do
          params(
            data:
              Moonbase::FieldValueParam::SocialLinkedInValueParam::Data::OrHash,
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
            {
              data: Moonbase::FieldValueParam::SocialLinkedInValueParam::Data,
              type: Symbol
            }
          )
        end
        def to_hash
        end

        class Data < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::FieldValueParam::SocialLinkedInValueParam::Data,
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

          # The social media profile for the LinkedIn platform
          sig do
            params(url: String, username: String).returns(T.attached_class)
          end
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

      sig { override.returns(T::Array[Moonbase::FieldValueParam::Variants]) }
      def self.variants
      end

      ValueParamArray =
        T.let(
          Moonbase::Internal::Type::ArrayOf[union: Moonbase::ValueParam],
          Moonbase::Internal::Type::Converter
        )
    end
  end
end
