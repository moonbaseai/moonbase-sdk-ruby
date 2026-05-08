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
            Moonbase::IdentifierValue,
            Moonbase::IntegerValue,
            Moonbase::FloatValue,
            Moonbase::MonetaryValue,
            Moonbase::PercentageValue,
            Moonbase::BooleanValue,
            Moonbase::EmailValue,
            Moonbase::URLValue,
            Moonbase::DomainValue,
            Moonbase::SocialXValueParam,
            Moonbase::SocialLinkedInValueParam,
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
