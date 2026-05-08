# frozen_string_literal: true

module Moonbase
  module Models
    # A default value for a field. Can be a static value (e.g., `value/date`) or a
    # server-resolved value (e.g., `current_date`). Static values use the same shape
    # as item values. Server-resolved values are computed when an item is created.
    module FieldDefaultValue
      extend Moonbase::Internal::Type::Union

      discriminator :type

      # A single line of text
      variant :"value/text/single_line", -> { Moonbase::SingleLineTextValue }

      # Multiple lines of text
      variant :"value/text/multi_line", -> { Moonbase::MultiLineTextValue }

      # Identifier string
      variant :"value/identifier", -> { Moonbase::IdentifierValue }

      # Integer value without units
      variant :"value/number/unitless_integer", -> { Moonbase::IntegerValue }

      # Floating point number
      variant :"value/number/unitless_float", -> { Moonbase::FloatValue }

      # Monetary or currency value
      variant :"value/number/monetary", -> { Moonbase::MonetaryValue }

      # Percentage numeric value
      variant :"value/number/percentage", -> { Moonbase::PercentageValue }

      # True or false value
      variant :"value/boolean", -> { Moonbase::BooleanValue }

      # Email address value
      variant :"value/email", -> { Moonbase::EmailValue }

      # URL or web address
      variant :"value/uri/url", -> { Moonbase::URLValue }

      # Internet domain name
      variant :"value/uri/domain", -> { Moonbase::DomainValue }

      # The social media profile for the X (formerly Twitter) platform
      variant :"value/uri/social_x", -> { Moonbase::SocialXValue }

      # The social media profile for the LinkedIn platform
      variant :"value/uri/social_linked_in", -> { Moonbase::SocialLinkedInValue }

      # Telephone number value
      variant :"value/telephone_number", -> { Moonbase::TelephoneNumber }

      # Geographic coordinate value
      variant :"value/geo", -> { Moonbase::GeoValue }

      # Date without time
      variant :"value/date", -> { Moonbase::DateValue }

      # Resolves to today's date at the time the record is created.
      variant :current_date, -> { Moonbase::CurrentDate }

      # Date and time value
      variant :"value/datetime", -> { Moonbase::DatetimeValue }

      # Resolves to the current date and time at the time the record is created.
      variant :current_datetime, -> { Moonbase::CurrentDatetime }

      # Selected choice option
      variant :"value/choice", -> { Moonbase::ChoiceValue }

      # Funnel step value
      variant :"value/funnel_step", -> { Moonbase::FunnelStepValue }

      # Related item reference
      variant :"value/relation", -> { Moonbase::RelationValue }

      # Resolves to the team member who creates the record.
      variant :current_member, -> { Moonbase::CurrentMember }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IdentifierValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::CurrentDate, Moonbase::Models::DatetimeValue, Moonbase::Models::CurrentDatetime, Moonbase::Models::ChoiceValue, Moonbase::Models::FunnelStepValue, Moonbase::Models::RelationValue, Moonbase::Models::CurrentMember)]
    end
  end
end
