# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # A typed value with discriminated union support
    module Value
      extend MoonbaseSDK::Internal::Type::Union

      discriminator :type

      # A single line of text
      variant :"value/text/single_line", -> { MoonbaseSDK::SingleLineTextValue }

      # Multiple lines of text
      variant :"value/text/multi_line", -> { MoonbaseSDK::MultiLineTextValue }

      # Integer value without units
      variant :"value/number/unitless_integer", -> { MoonbaseSDK::IntegerValue }

      # Floating point number
      variant :"value/number/unitless_float", -> { MoonbaseSDK::FloatValue }

      # Monetary or currency value
      variant :"value/number/monetary", -> { MoonbaseSDK::MonetaryValue }

      # Percentage numeric value
      variant :"value/number/percentage", -> { MoonbaseSDK::PercentageValue }

      # True or false value
      variant :"value/boolean", -> { MoonbaseSDK::BooleanValue }

      # Email address value
      variant :"value/email", -> { MoonbaseSDK::EmailValue }

      # URL or web address
      variant :"value/uri/url", -> { MoonbaseSDK::URLValue }

      # Internet domain name
      variant :"value/uri/domain", -> { MoonbaseSDK::DomainValue }

      # X (formerly Twitter) username
      variant :"value/uri/social_x", -> { MoonbaseSDK::SocialXValue }

      # LinkedIn profile link
      variant :"value/uri/social_linked_in", -> { MoonbaseSDK::SocialLinkedInValue }

      # Telephone number value
      variant :"value/telephone_number", -> { MoonbaseSDK::TelephoneNumber }

      # Geographic coordinate value
      variant :"value/geo", -> { MoonbaseSDK::GeoValue }

      # Date without time
      variant :"value/date", -> { MoonbaseSDK::DateValue }

      # Date and time value
      variant :"value/datetime", -> { MoonbaseSDK::DatetimeValue }

      # Selected choice option
      variant :"value/choice", -> { MoonbaseSDK::Choice }

      # Funnel step value
      variant :"value/funnel_step", -> { MoonbaseSDK::FunnelStep }

      # Related item reference
      variant :"value/relation", -> { MoonbaseSDK::RelationValue }

      # @!method self.variants
      #   @return [Array(MoonbaseSDK::Models::SingleLineTextValue, MoonbaseSDK::Models::MultiLineTextValue, MoonbaseSDK::Models::IntegerValue, MoonbaseSDK::Models::FloatValue, MoonbaseSDK::Models::MonetaryValue, MoonbaseSDK::Models::PercentageValue, MoonbaseSDK::Models::BooleanValue, MoonbaseSDK::Models::EmailValue, MoonbaseSDK::Models::URLValue, MoonbaseSDK::Models::DomainValue, MoonbaseSDK::Models::SocialXValue, MoonbaseSDK::Models::SocialLinkedInValue, MoonbaseSDK::Models::TelephoneNumber, MoonbaseSDK::Models::GeoValue, MoonbaseSDK::Models::DateValue, MoonbaseSDK::Models::DatetimeValue, MoonbaseSDK::Models::Choice, MoonbaseSDK::Models::FunnelStep, MoonbaseSDK::Models::RelationValue)]
    end
  end
end
