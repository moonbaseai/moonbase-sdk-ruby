# typed: strong

module MoonbaseSDK
  module Models
    class ItemUpsertParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::ItemUpsertParams, MoonbaseSDK::Internal::AnyHash)
        end

      # The ID of the `Collection` to create the item in.
      sig { returns(String) }
      attr_accessor :collection_id

      # A hash where keys are the `ref` of a `Field` and values are used to identify the
      # item to update. When multiple identifiers are provided, the update will find
      # items that match any of the identifiers.
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
      attr_accessor :identifiers

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
        returns(
          T.nilable(MoonbaseSDK::ItemUpsertParams::UpdateManyStrategy::OrSymbol)
        )
      end
      attr_reader :update_many_strategy

      sig do
        params(
          update_many_strategy:
            MoonbaseSDK::ItemUpsertParams::UpdateManyStrategy::OrSymbol
        ).void
      end
      attr_writer :update_many_strategy

      sig do
        returns(
          T.nilable(MoonbaseSDK::ItemUpsertParams::UpdateOneStrategy::OrSymbol)
        )
      end
      attr_reader :update_one_strategy

      sig do
        params(
          update_one_strategy:
            MoonbaseSDK::ItemUpsertParams::UpdateOneStrategy::OrSymbol
        ).void
      end
      attr_writer :update_one_strategy

      sig do
        params(
          collection_id: String,
          identifiers:
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
          update_many_strategy:
            MoonbaseSDK::ItemUpsertParams::UpdateManyStrategy::OrSymbol,
          update_one_strategy:
            MoonbaseSDK::ItemUpsertParams::UpdateOneStrategy::OrSymbol,
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the `Collection` to create the item in.
        collection_id:,
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
            collection_id: String,
            identifiers:
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
            update_many_strategy:
              MoonbaseSDK::ItemUpsertParams::UpdateManyStrategy::OrSymbol,
            update_one_strategy:
              MoonbaseSDK::ItemUpsertParams::UpdateOneStrategy::OrSymbol,
            request_options: MoonbaseSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      module UpdateManyStrategy
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MoonbaseSDK::ItemUpsertParams::UpdateManyStrategy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REPLACE =
          T.let(
            :replace,
            MoonbaseSDK::ItemUpsertParams::UpdateManyStrategy::TaggedSymbol
          )
        PRESERVE =
          T.let(
            :preserve,
            MoonbaseSDK::ItemUpsertParams::UpdateManyStrategy::TaggedSymbol
          )
        MERGE =
          T.let(
            :merge,
            MoonbaseSDK::ItemUpsertParams::UpdateManyStrategy::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MoonbaseSDK::ItemUpsertParams::UpdateManyStrategy::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module UpdateOneStrategy
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MoonbaseSDK::ItemUpsertParams::UpdateOneStrategy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REPLACE =
          T.let(
            :replace,
            MoonbaseSDK::ItemUpsertParams::UpdateOneStrategy::TaggedSymbol
          )
        PRESERVE =
          T.let(
            :preserve,
            MoonbaseSDK::ItemUpsertParams::UpdateOneStrategy::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MoonbaseSDK::ItemUpsertParams::UpdateOneStrategy::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
