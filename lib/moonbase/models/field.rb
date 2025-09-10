# frozen_string_literal: true

module Moonbase
  module Models
    # A field definition, which varies by type
    module Field
      extend Moonbase::Internal::Type::Union

      discriminator :type

      # A field that stores a single line of text without line breaks.
      variant :"field/text/single_line", -> { Moonbase::SingleLineTextField }

      # A field that stores multiple lines of text with line breaks preserved.
      variant :"field/text/multi_line", -> { Moonbase::MultiLineTextField }

      # A field that stores whole numbers without decimal places.
      variant :"field/number/unitless_integer", -> { Moonbase::IntegerField }

      # A field that stores decimal numbers with floating-point precision.
      variant :"field/number/unitless_float", -> { Moonbase::FloatField }

      # A field that stores monetary amounts with currency information.
      variant :"field/number/monetary", -> { Moonbase::MonetaryField }

      # A field that stores percentage values as decimal numbers.
      variant :"field/number/percentage", -> { Moonbase::PercentageField }

      # A field that stores true or false values.
      variant :"field/boolean", -> { Moonbase::BooleanField }

      # A field that stores and validates email addresses.
      variant :"field/email", -> { Moonbase::EmailField }

      # A field that stores and validates web URLs.
      variant :"field/uri/url", -> { Moonbase::URLField }

      # A field that stores internet domain names.
      variant :"field/uri/domain", -> { Moonbase::DomainField }

      # A field that stores X (formerly Twitter) profile information.
      variant :"field/uri/social_x", -> { Moonbase::SocialXField }

      # A field that stores LinkedIn profile information.
      variant :"field/uri/social_linked_in", -> { Moonbase::SocialLinkedInField }

      # A field that stores phone numbers in E.164 format.
      variant :"field/telephone_number", -> { Moonbase::TelephoneNumberField }

      # A field that stores geographic coordinates or location data.
      variant :"field/geo", -> { Moonbase::GeoField }

      # A field that stores dates without time information.
      variant :"field/date", -> { Moonbase::DateField }

      # A field that stores dates with time information.
      variant :"field/datetime", -> { Moonbase::DatetimeField }

      # A field that stores one or more predefined options from a list of choices.
      variant :"field/choice", -> { Moonbase::ChoiceField }

      # A field that tracks an item's position in a funnel or pipeline workflow.
      variant :"field/stage", -> { Moonbase::StageField }

      # A field that creates a link between items in different collections, enabling cross-collection relationships.
      variant :"field/relation", -> { Moonbase::RelationField }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::SingleLineTextField, Moonbase::Models::MultiLineTextField, Moonbase::Models::IntegerField, Moonbase::Models::FloatField, Moonbase::Models::MonetaryField, Moonbase::Models::PercentageField, Moonbase::Models::BooleanField, Moonbase::Models::EmailField, Moonbase::Models::URLField, Moonbase::Models::DomainField, Moonbase::Models::SocialXField, Moonbase::Models::SocialLinkedInField, Moonbase::Models::TelephoneNumberField, Moonbase::Models::GeoField, Moonbase::Models::DateField, Moonbase::Models::DatetimeField, Moonbase::Models::ChoiceField, Moonbase::Models::StageField, Moonbase::Models::RelationField)]
    end
  end
end
