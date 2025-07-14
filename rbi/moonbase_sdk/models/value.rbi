# typed: strong

module MoonbaseSDK
  module Models
    # A typed value with discriminated union support
    module Value
      extend MoonbaseSDK::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            MoonbaseSDK::SingleLineTextValue,
            MoonbaseSDK::MultiLineTextValue,
            MoonbaseSDK::IntegerValue,
            MoonbaseSDK::FloatValue,
            MoonbaseSDK::MonetaryValue,
            MoonbaseSDK::PercentageValue,
            MoonbaseSDK::BooleanValue,
            MoonbaseSDK::EmailValue,
            MoonbaseSDK::URLValue,
            MoonbaseSDK::DomainValue,
            MoonbaseSDK::SocialXValue,
            MoonbaseSDK::SocialLinkedInValue,
            MoonbaseSDK::TelephoneNumber,
            MoonbaseSDK::GeoValue,
            MoonbaseSDK::DateValue,
            MoonbaseSDK::DatetimeValue,
            MoonbaseSDK::Choice,
            MoonbaseSDK::FunnelStep,
            MoonbaseSDK::RelationValue
          )
        end

      sig { override.returns(T::Array[MoonbaseSDK::Value::Variants]) }
      def self.variants
      end
    end
  end
end
