# typed: strong

module MoonbaseSDK
  module Models
    class ItemCreateParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::ItemCreateParams, MoonbaseSDK::Internal::AnyHash)
        end

      # The ID of the `Collection` to create the item in.
      sig { returns(String) }
      attr_accessor :collection_id

      # A hash where keys are the `ref` of a `Field` and values are the data to be set.
      sig do
        returns(
          T::Hash[
            Symbol,
            T.nilable(
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
                MoonbaseSDK::RelationValue,
                T::Array[MoonbaseSDK::Value]
              )
            )
          ]
        )
      end
      attr_accessor :values

      sig do
        params(
          collection_id: String,
          values:
            T::Hash[
              Symbol,
              T.nilable(
                T.any(
                  MoonbaseSDK::SingleLineTextValue::OrHash,
                  MoonbaseSDK::MultiLineTextValue::OrHash,
                  MoonbaseSDK::IntegerValue::OrHash,
                  MoonbaseSDK::FloatValue::OrHash,
                  MoonbaseSDK::MonetaryValue::OrHash,
                  MoonbaseSDK::PercentageValue::OrHash,
                  MoonbaseSDK::BooleanValue::OrHash,
                  MoonbaseSDK::EmailValue::OrHash,
                  MoonbaseSDK::URLValue::OrHash,
                  MoonbaseSDK::DomainValue::OrHash,
                  MoonbaseSDK::SocialXValue::OrHash,
                  MoonbaseSDK::SocialLinkedInValue::OrHash,
                  MoonbaseSDK::TelephoneNumber::OrHash,
                  MoonbaseSDK::GeoValue::OrHash,
                  MoonbaseSDK::DateValue::OrHash,
                  MoonbaseSDK::DatetimeValue::OrHash,
                  MoonbaseSDK::Choice::OrHash,
                  MoonbaseSDK::FunnelStep::OrHash,
                  MoonbaseSDK::RelationValue,
                  T::Array[MoonbaseSDK::Value]
                )
              )
            ],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the `Collection` to create the item in.
        collection_id:,
        # A hash where keys are the `ref` of a `Field` and values are the data to be set.
        values:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            collection_id: String,
            values:
              T::Hash[
                Symbol,
                T.nilable(
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
                    MoonbaseSDK::RelationValue,
                    T::Array[MoonbaseSDK::Value]
                  )
                )
              ],
            request_options: MoonbaseSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
