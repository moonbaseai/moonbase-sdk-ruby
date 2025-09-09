# typed: strong

module Moonbase
  module Models
    class Item < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Item, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # String representing the object’s type. Always `item` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A hash where keys are the `ref` of a `Field` and values are the data stored for
      # that field.
      sig { returns(T::Hash[Symbol, Moonbase::FieldValue::Variants]) }
      attr_accessor :values

      # An Item represents a single record or row within a Collection. It holds a set of
      # `values` corresponding to the Collection's `fields`.
      sig do
        params(
          id: String,
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
                Moonbase::ChoiceValue::OrHash,
                Moonbase::FunnelStepValue::OrHash,
                Moonbase::RelationValue::OrHash,
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
                    Moonbase::SocialXValue::OrHash,
                    Moonbase::SocialLinkedInValue::OrHash,
                    Moonbase::TelephoneNumber::OrHash,
                    Moonbase::GeoValue::OrHash,
                    Moonbase::DateValue::OrHash,
                    Moonbase::DatetimeValue::OrHash,
                    Moonbase::ChoiceValue::OrHash,
                    Moonbase::FunnelStepValue::OrHash,
                    Moonbase::RelationValue::OrHash
                  )
                ]
              )
            ],
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # A hash where keys are the `ref` of a `Field` and values are the data stored for
        # that field.
        values:,
        # String representing the object’s type. Always `item` for this object.
        type: :item
      )
      end

      sig do
        override.returns(
          {
            id: String,
            type: Symbol,
            values: T::Hash[Symbol, Moonbase::FieldValue::Variants]
          }
        )
      end
      def to_hash
      end
    end
  end
end
