# typed: strong

module Moonbase
  module Models
    class ItemUpsertParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::ItemUpsertParams, Moonbase::Internal::AnyHash)
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
          ]
        )
      end
      attr_accessor :identifiers

      # A hash where keys are the `ref` of a `Field` and values are the data to be set.
      sig do
        returns(
          T::Hash[
            Symbol,
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
          ]
        )
      end
      attr_accessor :values

      sig do
        returns(
          T.nilable(Moonbase::ItemUpsertParams::UpdateManyStrategy::OrSymbol)
        )
      end
      attr_reader :update_many_strategy

      sig do
        params(
          update_many_strategy:
            Moonbase::ItemUpsertParams::UpdateManyStrategy::OrSymbol
        ).void
      end
      attr_writer :update_many_strategy

      sig do
        returns(
          T.nilable(Moonbase::ItemUpsertParams::UpdateOneStrategy::OrSymbol)
        )
      end
      attr_reader :update_one_strategy

      sig do
        params(
          update_one_strategy:
            Moonbase::ItemUpsertParams::UpdateOneStrategy::OrSymbol
        ).void
      end
      attr_writer :update_one_strategy

      sig do
        params(
          collection_id: String,
          identifiers:
            T::Hash[
              Symbol,
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
            ],
          values:
            T::Hash[
              Symbol,
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
            ],
          update_many_strategy:
            Moonbase::ItemUpsertParams::UpdateManyStrategy::OrSymbol,
          update_one_strategy:
            Moonbase::ItemUpsertParams::UpdateOneStrategy::OrSymbol,
          request_options: Moonbase::RequestOptions::OrHash
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
              ],
            values:
              T::Hash[
                Symbol,
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
              ],
            update_many_strategy:
              Moonbase::ItemUpsertParams::UpdateManyStrategy::OrSymbol,
            update_one_strategy:
              Moonbase::ItemUpsertParams::UpdateOneStrategy::OrSymbol,
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
            T.all(Symbol, Moonbase::ItemUpsertParams::UpdateManyStrategy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REPLACE =
          T.let(
            :replace,
            Moonbase::ItemUpsertParams::UpdateManyStrategy::TaggedSymbol
          )
        PRESERVE =
          T.let(
            :preserve,
            Moonbase::ItemUpsertParams::UpdateManyStrategy::TaggedSymbol
          )
        MERGE =
          T.let(
            :merge,
            Moonbase::ItemUpsertParams::UpdateManyStrategy::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::ItemUpsertParams::UpdateManyStrategy::TaggedSymbol
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
            T.all(Symbol, Moonbase::ItemUpsertParams::UpdateOneStrategy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REPLACE =
          T.let(
            :replace,
            Moonbase::ItemUpsertParams::UpdateOneStrategy::TaggedSymbol
          )
        PRESERVE =
          T.let(
            :preserve,
            Moonbase::ItemUpsertParams::UpdateOneStrategy::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::ItemUpsertParams::UpdateOneStrategy::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
