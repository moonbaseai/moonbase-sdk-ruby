# typed: strong

module Moonbase
  module Models
    # A field definition, which varies by type
    module Field
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Moonbase::SingleLineTextField,
            Moonbase::MultiLineTextField,
            Moonbase::IntegerField,
            Moonbase::FloatField,
            Moonbase::MonetaryField,
            Moonbase::PercentageField,
            Moonbase::BooleanField,
            Moonbase::EmailField,
            Moonbase::URLField,
            Moonbase::DomainField,
            Moonbase::SocialXField,
            Moonbase::SocialLinkedInField,
            Moonbase::TelephoneNumberField,
            Moonbase::GeoField,
            Moonbase::DateField,
            Moonbase::DatetimeField,
            Moonbase::ChoiceField,
            Moonbase::StageField,
            Moonbase::RelationField
          )
        end

      sig { override.returns(T::Array[Moonbase::Field::Variants]) }
      def self.variants
      end
    end
  end
end
