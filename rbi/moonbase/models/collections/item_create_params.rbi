# typed: strong

module Moonbase
  module Models
    module Collections
      class ItemCreateParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Collections::ItemCreateParams,
              Moonbase::Internal::AnyHash
            )
          end

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
                  Moonbase::FieldValueParam::SocialXValueParam,
                  Moonbase::FieldValueParam::SocialLinkedInValueParam,
                  Moonbase::TelephoneNumber,
                  Moonbase::GeoValue,
                  Moonbase::DateValue,
                  Moonbase::DatetimeValue,
                  Moonbase::ChoiceValueParam,
                  Moonbase::FunnelStepValueParam,
                  Moonbase::RelationValueParam,
                  T::Array[
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
                      Moonbase::ValueParam::ValueUriSocialX,
                      Moonbase::ValueParam::ValueUriSocialLinkedIn,
                      Moonbase::TelephoneNumber,
                      Moonbase::GeoValue,
                      Moonbase::DateValue,
                      Moonbase::DatetimeValue,
                      Moonbase::ChoiceValueParam,
                      Moonbase::FunnelStepValueParam,
                      Moonbase::RelationValueParam
                    )
                  ]
                )
              )
            ]
          )
        end
        attr_accessor :values

        sig do
          params(
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
                    Moonbase::FieldValueParam::SocialXValueParam::OrHash,
                    Moonbase::FieldValueParam::SocialLinkedInValueParam::OrHash,
                    Moonbase::TelephoneNumber::OrHash,
                    Moonbase::GeoValue::OrHash,
                    Moonbase::DateValue::OrHash,
                    Moonbase::DatetimeValue::OrHash,
                    Moonbase::ChoiceValueParam::OrHash,
                    Moonbase::FunnelStepValueParam::OrHash,
                    Moonbase::RelationValueParam::OrHash,
                    T::Array[
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
                        Moonbase::ValueParam::ValueUriSocialX::OrHash,
                        Moonbase::ValueParam::ValueUriSocialLinkedIn::OrHash,
                        Moonbase::TelephoneNumber::OrHash,
                        Moonbase::GeoValue::OrHash,
                        Moonbase::DateValue::OrHash,
                        Moonbase::DatetimeValue::OrHash,
                        Moonbase::ChoiceValueParam::OrHash,
                        Moonbase::FunnelStepValueParam::OrHash,
                        Moonbase::RelationValueParam::OrHash
                      )
                    ]
                  )
                )
              ],
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A hash where keys are the `ref` of a `Field` and values are the data to be set.
          values:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
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
                      Moonbase::FieldValueParam::SocialXValueParam,
                      Moonbase::FieldValueParam::SocialLinkedInValueParam,
                      Moonbase::TelephoneNumber,
                      Moonbase::GeoValue,
                      Moonbase::DateValue,
                      Moonbase::DatetimeValue,
                      Moonbase::ChoiceValueParam,
                      Moonbase::FunnelStepValueParam,
                      Moonbase::RelationValueParam,
                      T::Array[
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
                          Moonbase::ValueParam::ValueUriSocialX,
                          Moonbase::ValueParam::ValueUriSocialLinkedIn,
                          Moonbase::TelephoneNumber,
                          Moonbase::GeoValue,
                          Moonbase::DateValue,
                          Moonbase::DatetimeValue,
                          Moonbase::ChoiceValueParam,
                          Moonbase::FunnelStepValueParam,
                          Moonbase::RelationValueParam
                        )
                      ]
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
end
