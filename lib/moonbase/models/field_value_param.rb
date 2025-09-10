# frozen_string_literal: true

module Moonbase
  module Models
    # A field can be null, a single value, or an array of values
    module FieldValueParam
      extend Moonbase::Internal::Type::Union

      # A single line of text
      variant -> { Moonbase::SingleLineTextValue }

      # Multiple lines of text
      variant -> { Moonbase::MultiLineTextValue }

      # Integer value without units
      variant -> { Moonbase::IntegerValue }

      # Floating point number
      variant -> { Moonbase::FloatValue }

      # Monetary or currency value
      variant -> { Moonbase::MonetaryValue }

      # Percentage numeric value
      variant -> { Moonbase::PercentageValue }

      # True or false value
      variant -> { Moonbase::BooleanValue }

      # Email address value
      variant -> { Moonbase::EmailValue }

      # URL or web address
      variant -> { Moonbase::URLValue }

      # Internet domain name
      variant -> { Moonbase::DomainValue }

      # The social media profile for the X (formerly Twitter) platform
      variant -> { Moonbase::FieldValueParam::SocialXValueParam }

      # The social media profile for the LinkedIn platform
      variant -> { Moonbase::FieldValueParam::SocialLinkedInValueParam }

      # Telephone number value
      variant -> { Moonbase::TelephoneNumber }

      # Geographic coordinate value
      variant -> { Moonbase::GeoValue }

      # Date without time
      variant -> { Moonbase::DateValue }

      # Date and time value
      variant -> { Moonbase::DatetimeValue }

      # Selected choice option
      variant -> { Moonbase::ChoiceValueParam }

      # Funnel step value
      variant -> { Moonbase::FunnelStepValueParam }

      # Related item reference
      variant -> { Moonbase::RelationValueParam }

      variant -> { Moonbase::Models::FieldValueParam::ValueParamArray }

      class SocialXValueParam < Moonbase::Internal::Type::BaseModel
        # @!attribute data
        #   Social media profile information including both the full URL and extracted
        #   username.
        #
        #   @return [Moonbase::Models::FieldValueParam::SocialXValueParam::Data]
        required :data, -> { Moonbase::FieldValueParam::SocialXValueParam::Data }

        # @!attribute type
        #
        #   @return [Symbol, :"value/uri/social_x"]
        required :type, const: :"value/uri/social_x"

        # @!method initialize(data:, type: :"value/uri/social_x")
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::FieldValueParam::SocialXValueParam} for more details.
        #
        #   The social media profile for the X (formerly Twitter) platform
        #
        #   @param data [Moonbase::Models::FieldValueParam::SocialXValueParam::Data] Social media profile information including both the full URL and extracted usern
        #
        #   @param type [Symbol, :"value/uri/social_x"]

        # @see Moonbase::Models::FieldValueParam::SocialXValueParam#data
        class Data < Moonbase::Internal::Type::BaseModel
          # @!attribute url
          #   The full URL to the X profile, starting with 'https://x.com/'
          #
          #   @return [String, nil]
          optional :url, String

          # @!attribute username
          #   The X username, up to 15 characters long, containing only lowercase letters
          #   (a-z), uppercase letters (A-Z), numbers (0-9), and underscores (\_). Does not
          #   include the '@' symbol prefix.
          #
          #   @return [String, nil]
          optional :username, String

          # @!method initialize(url: nil, username: nil)
          #   Some parameter documentations has been truncated, see
          #   {Moonbase::Models::FieldValueParam::SocialXValueParam::Data} for more details.
          #
          #   Social media profile information including both the full URL and extracted
          #   username.
          #
          #   @param url [String] The full URL to the X profile, starting with 'https://x.com/'
          #
          #   @param username [String] The X username, up to 15 characters long, containing only lowercase letters (a-z
        end
      end

      class SocialLinkedInValueParam < Moonbase::Internal::Type::BaseModel
        # @!attribute data
        #   The social media profile for the LinkedIn platform
        #
        #   @return [Moonbase::Models::FieldValueParam::SocialLinkedInValueParam::Data]
        required :data, -> { Moonbase::FieldValueParam::SocialLinkedInValueParam::Data }

        # @!attribute type
        #
        #   @return [Symbol, :"value/uri/social_linked_in"]
        required :type, const: :"value/uri/social_linked_in"

        # @!method initialize(data:, type: :"value/uri/social_linked_in")
        #   The social media profile for the LinkedIn platform
        #
        #   @param data [Moonbase::Models::FieldValueParam::SocialLinkedInValueParam::Data] The social media profile for the LinkedIn platform
        #
        #   @param type [Symbol, :"value/uri/social_linked_in"]

        # @see Moonbase::Models::FieldValueParam::SocialLinkedInValueParam#data
        class Data < Moonbase::Internal::Type::BaseModel
          # @!attribute url
          #   The full URL to the LinkedIn profile.
          #
          #   @return [String, nil]
          optional :url, String

          # @!attribute username
          #   The LinkedIn username, including the prefix 'company/' for company pages or
          #   'in/' for personal profiles.
          #
          #   @return [String, nil]
          optional :username, String

          # @!method initialize(url: nil, username: nil)
          #   Some parameter documentations has been truncated, see
          #   {Moonbase::Models::FieldValueParam::SocialLinkedInValueParam::Data} for more
          #   details.
          #
          #   The social media profile for the LinkedIn platform
          #
          #   @param url [String] The full URL to the LinkedIn profile.
          #
          #   @param username [String] The LinkedIn username, including the prefix 'company/' for company pages or 'in/
        end
      end

      # @!method self.variants
      #   @return [Array(Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::FieldValueParam::SocialXValueParam, Moonbase::Models::FieldValueParam::SocialLinkedInValueParam, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam, Array<Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::ValueParam::ValueUriSocialX, Moonbase::Models::ValueParam::ValueUriSocialLinkedIn, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam>)]

      # @type [Moonbase::Internal::Type::Converter]
      ValueParamArray = Moonbase::Internal::Type::ArrayOf[union: -> { Moonbase::ValueParam }]
    end
  end
end
