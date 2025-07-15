# typed: strong

module Moonbase
  module Models
    class ItemUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::ItemUpdateParams, Moonbase::Internal::AnyHash)
        end

      # A hash where keys are the `ref` of a `Field` and values are the new data to be
      # set.
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
        returns(
          T.nilable(Moonbase::ItemUpdateParams::UpdateManyStrategy::OrSymbol)
        )
      end
      attr_reader :update_many_strategy

      sig do
        params(
          update_many_strategy:
            Moonbase::ItemUpdateParams::UpdateManyStrategy::OrSymbol
        ).void
      end
      attr_writer :update_many_strategy

      sig do
        returns(
          T.nilable(Moonbase::ItemUpdateParams::UpdateOneStrategy::OrSymbol)
        )
      end
      attr_reader :update_one_strategy

      sig do
        params(
          update_one_strategy:
            Moonbase::ItemUpdateParams::UpdateOneStrategy::OrSymbol
        ).void
      end
      attr_writer :update_one_strategy

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
          update_many_strategy:
            Moonbase::ItemUpdateParams::UpdateManyStrategy::OrSymbol,
          update_one_strategy:
            Moonbase::ItemUpdateParams::UpdateOneStrategy::OrSymbol,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A hash where keys are the `ref` of a `Field` and values are the new data to be
        # set.
        values:,
        update_many_strategy: nil,
        update_one_strategy: nil,
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
            update_many_strategy:
              Moonbase::ItemUpdateParams::UpdateManyStrategy::OrSymbol,
            update_one_strategy:
              Moonbase::ItemUpdateParams::UpdateOneStrategy::OrSymbol,
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
            T.all(Symbol, Moonbase::ItemUpdateParams::UpdateManyStrategy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REPLACE =
          T.let(
            :replace,
            Moonbase::ItemUpdateParams::UpdateManyStrategy::TaggedSymbol
          )
        PRESERVE =
          T.let(
            :preserve,
            Moonbase::ItemUpdateParams::UpdateManyStrategy::TaggedSymbol
          )
        MERGE =
          T.let(
            :merge,
            Moonbase::ItemUpdateParams::UpdateManyStrategy::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::ItemUpdateParams::UpdateManyStrategy::TaggedSymbol
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
            T.all(Symbol, Moonbase::ItemUpdateParams::UpdateOneStrategy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REPLACE =
          T.let(
            :replace,
            Moonbase::ItemUpdateParams::UpdateOneStrategy::TaggedSymbol
          )
        PRESERVE =
          T.let(
            :preserve,
            Moonbase::ItemUpdateParams::UpdateOneStrategy::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::ItemUpdateParams::UpdateOneStrategy::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
