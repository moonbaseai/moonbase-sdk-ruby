# typed: strong

module Moonbase
  module Models
    class ItemCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::ItemCreateParams, Moonbase::Internal::AnyHash)
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
                Moonbase::SingleLineTextValue,
                Moonbase::MultiLineTextValue,
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
                Moonbase::DatetimeValue,
                Moonbase::Choice,
                Moonbase::FunnelStep,
                Moonbase::RelationValue,
                T::Array[Moonbase::Value]
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
                  Moonbase::SingleLineTextValue::OrHash,
                  Moonbase::MultiLineTextValue::OrHash,
                  Moonbase::IntegerValue::OrHash,
                  Moonbase::FloatValue::OrHash,
                  Moonbase::MonetaryValue::OrHash,
                  Moonbase::PercentageValue::OrHash,
                  Moonbase::BooleanValue::OrHash,
                  Moonbase::EmailValue::OrHash,
                  Moonbase::URLValue::OrHash,
                  Moonbase::DomainValue::OrHash,
                  Moonbase::SocialXValue::OrHash,
                  Moonbase::SocialLinkedInValue::OrHash,
                  Moonbase::TelephoneNumber::OrHash,
                  Moonbase::GeoValue::OrHash,
                  Moonbase::DateValue::OrHash,
                  Moonbase::DatetimeValue::OrHash,
                  Moonbase::Choice::OrHash,
                  Moonbase::FunnelStep::OrHash,
                  Moonbase::RelationValue,
                  T::Array[Moonbase::Value]
                )
              )
            ],
          request_options: Moonbase::RequestOptions::OrHash
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
                    Moonbase::SingleLineTextValue,
                    Moonbase::MultiLineTextValue,
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
                    Moonbase::DatetimeValue,
                    Moonbase::Choice,
                    Moonbase::FunnelStep,
                    Moonbase::RelationValue,
                    T::Array[Moonbase::Value]
                  )
                )
              ],
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
