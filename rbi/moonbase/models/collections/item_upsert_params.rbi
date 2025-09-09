# typed: strong

module Moonbase
  module Models
    module Collections
      class ItemUpsertParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Collections::ItemUpsertParams,
              Moonbase::Internal::AnyHash
            )
          end

        # A hash where keys are the `ref` of a `Field` and values are used to identify the
        # item to update. When multiple identifiers are provided, the update will find
        # items that match any of the identifiers.
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
        attr_accessor :identifiers

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
          returns(
            T.nilable(
              Moonbase::Collections::ItemUpsertParams::UpdateManyStrategy::OrSymbol
            )
          )
        end
        attr_reader :update_many_strategy

        sig do
          params(
            update_many_strategy:
              Moonbase::Collections::ItemUpsertParams::UpdateManyStrategy::OrSymbol
          ).void
        end
        attr_writer :update_many_strategy

        sig do
          returns(
            T.nilable(
              Moonbase::Collections::ItemUpsertParams::UpdateOneStrategy::OrSymbol
            )
          )
        end
        attr_reader :update_one_strategy

        sig do
          params(
            update_one_strategy:
              Moonbase::Collections::ItemUpsertParams::UpdateOneStrategy::OrSymbol
          ).void
        end
        attr_writer :update_one_strategy

        sig do
          params(
            identifiers:
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
            update_many_strategy:
              Moonbase::Collections::ItemUpsertParams::UpdateManyStrategy::OrSymbol,
            update_one_strategy:
              Moonbase::Collections::ItemUpsertParams::UpdateOneStrategy::OrSymbol,
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A hash where keys are the `ref` of a `Field` and values are used to identify the
          # item to update. When multiple identifiers are provided, the update will find
          # items that match any of the identifiers.
          identifiers:,
          # A hash where keys are the `ref` of a `Field` and values are the data to be set.
          values:,
          update_many_strategy: nil,
          update_one_strategy: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              identifiers:
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
              update_many_strategy:
                Moonbase::Collections::ItemUpsertParams::UpdateManyStrategy::OrSymbol,
              update_one_strategy:
                Moonbase::Collections::ItemUpsertParams::UpdateOneStrategy::OrSymbol,
              request_options: Moonbase::RequestOptions
            }
          )
        end
        def to_hash
        end

        module UpdateManyStrategy
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Moonbase::Collections::ItemUpsertParams::UpdateManyStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REPLACE =
            T.let(
              :replace,
              Moonbase::Collections::ItemUpsertParams::UpdateManyStrategy::TaggedSymbol
            )
          PRESERVE =
            T.let(
              :preserve,
              Moonbase::Collections::ItemUpsertParams::UpdateManyStrategy::TaggedSymbol
            )
          MERGE =
            T.let(
              :merge,
              Moonbase::Collections::ItemUpsertParams::UpdateManyStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Moonbase::Collections::ItemUpsertParams::UpdateManyStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module UpdateOneStrategy
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Moonbase::Collections::ItemUpsertParams::UpdateOneStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REPLACE =
            T.let(
              :replace,
              Moonbase::Collections::ItemUpsertParams::UpdateOneStrategy::TaggedSymbol
            )
          PRESERVE =
            T.let(
              :preserve,
              Moonbase::Collections::ItemUpsertParams::UpdateOneStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Moonbase::Collections::ItemUpsertParams::UpdateOneStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
