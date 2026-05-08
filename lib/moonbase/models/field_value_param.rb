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

      # Identifier string
      variant -> { Moonbase::IdentifierValue }

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
      variant -> { Moonbase::SocialXValueParam }

      # The social media profile for the LinkedIn platform
      variant -> { Moonbase::SocialLinkedInValueParam }

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

      # @!method self.variants
      #   @return [Array(Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IdentifierValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValueParam, Moonbase::Models::SocialLinkedInValueParam, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam, Array<Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IdentifierValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValueParam, Moonbase::Models::SocialLinkedInValueParam, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam>)]

      # @type [Moonbase::Internal::Type::Converter]
      ValueParamArray = Moonbase::Internal::Type::ArrayOf[union: -> { Moonbase::ValueParam }]
    end
  end
end
