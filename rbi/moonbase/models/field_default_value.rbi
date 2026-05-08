# typed: strong

module Moonbase
  module Models
    # A default value for a field. Can be a static value (e.g., `value/date`) or a
    # server-resolved value (e.g., `current_date`). Static values use the same shape
    # as item values. Server-resolved values are computed when an item is created.
    module FieldDefaultValue
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
            Moonbase::SocialXValue,
            Moonbase::SocialLinkedInValue,
            Moonbase::TelephoneNumber,
            Moonbase::GeoValue,
            Moonbase::DateValue,
            Moonbase::CurrentDate,
            Moonbase::DatetimeValue,
            Moonbase::CurrentDatetime,
            Moonbase::ChoiceValue,
            Moonbase::FunnelStepValue,
            Moonbase::RelationValue,
            Moonbase::CurrentMember
          )
        end

      sig { override.returns(T::Array[Moonbase::FieldDefaultValue::Variants]) }
      def self.variants
      end
    end
  end
end
