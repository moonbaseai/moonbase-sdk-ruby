# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # A field can be null, a single value, or an array of values
    module FieldValue
      extend MoonbaseSDK::Internal::Type::Union

      # A single line of text
      variant -> { MoonbaseSDK::SingleLineTextValue }

      # Multiple lines of text
      variant -> { MoonbaseSDK::MultiLineTextValue }

      # Integer value without units
      variant -> { MoonbaseSDK::IntegerValue }

      # Floating point number
      variant -> { MoonbaseSDK::FloatValue }

      # Monetary or currency value
      variant -> { MoonbaseSDK::MonetaryValue }

      # Percentage numeric value
      variant -> { MoonbaseSDK::PercentageValue }

      # True or false value
      variant -> { MoonbaseSDK::BooleanValue }

      # Email address value
      variant -> { MoonbaseSDK::EmailValue }

      # URL or web address
      variant -> { MoonbaseSDK::URLValue }

      # Internet domain name
      variant -> { MoonbaseSDK::DomainValue }

      # X (formerly Twitter) username
      variant -> { MoonbaseSDK::SocialXValue }

      # LinkedIn profile link
      variant -> { MoonbaseSDK::SocialLinkedInValue }

      # Telephone number value
      variant -> { MoonbaseSDK::TelephoneNumber }

      # Geographic coordinate value
      variant -> { MoonbaseSDK::GeoValue }

      # Date without time
      variant -> { MoonbaseSDK::DateValue }

      # Date and time value
      variant -> { MoonbaseSDK::DatetimeValue }

      # Selected choice option
      variant -> { MoonbaseSDK::Choice }

      # Funnel step value
      variant -> { MoonbaseSDK::FunnelStep }

      # Related item reference
      variant -> { MoonbaseSDK::RelationValue }

      variant -> { MoonbaseSDK::Models::FieldValue::ValueArray }

      # @!method self.variants
      #   @return [Array(MoonbaseSDK::Models::SingleLineTextValue, MoonbaseSDK::Models::MultiLineTextValue, MoonbaseSDK::Models::IntegerValue, MoonbaseSDK::Models::FloatValue, MoonbaseSDK::Models::MonetaryValue, MoonbaseSDK::Models::PercentageValue, MoonbaseSDK::Models::BooleanValue, MoonbaseSDK::Models::EmailValue, MoonbaseSDK::Models::URLValue, MoonbaseSDK::Models::DomainValue, MoonbaseSDK::Models::SocialXValue, MoonbaseSDK::Models::SocialLinkedInValue, MoonbaseSDK::Models::TelephoneNumber, MoonbaseSDK::Models::GeoValue, MoonbaseSDK::Models::DateValue, MoonbaseSDK::Models::DatetimeValue, MoonbaseSDK::Models::Choice, MoonbaseSDK::Models::FunnelStep, MoonbaseSDK::Models::RelationValue, Array<MoonbaseSDK::Models::Value>)]

      # @type [MoonbaseSDK::Internal::Type::Converter]
      ValueArray = MoonbaseSDK::Internal::Type::ArrayOf[union: -> { MoonbaseSDK::Value }]
    end
  end
end
