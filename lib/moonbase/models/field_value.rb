# frozen_string_literal: true

module Moonbase
  module Models
    # A field can be null, a single value, or an array of values
    module FieldValue
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

      # X (formerly Twitter) username
      variant -> { Moonbase::SocialXValue }

      # LinkedIn profile link
      variant -> { Moonbase::SocialLinkedInValue }

      # Telephone number value
      variant -> { Moonbase::TelephoneNumber }

      # Geographic coordinate value
      variant -> { Moonbase::GeoValue }

      # Date without time
      variant -> { Moonbase::DateValue }

      # Date and time value
      variant -> { Moonbase::DatetimeValue }

      # Selected choice option
      variant -> { Moonbase::Choice }

      # Funnel step value
      variant -> { Moonbase::FunnelStep }

      # Related item reference
      variant -> { Moonbase::RelationValue }

      variant -> { Moonbase::Models::FieldValue::ValueArray }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::Choice, Moonbase::Models::FunnelStep, Moonbase::Models::RelationValue, Array<Moonbase::Models::Value>)]

      # @type [Moonbase::Internal::Type::Converter]
      ValueArray = Moonbase::Internal::Type::ArrayOf[union: -> { Moonbase::Value }]
    end
  end
end
