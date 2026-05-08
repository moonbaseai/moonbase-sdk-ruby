# typed: strong

module Moonbase
  module Models
    # A typed value with discriminated union support
    module ValueParam
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
            Moonbase::RelationValueParam
          )
        end

      sig { override.returns(T::Array[Moonbase::ValueParam::Variants]) }
      def self.variants
      end
    end
  end
end
