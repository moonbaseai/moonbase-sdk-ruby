# typed: strong

module Moonbase
  module Models
    class ItemsFilterValueMatches < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ItemsFilterValueMatches, Moonbase::Internal::AnyHash)
        end

      # The id or key of the field in which values are matched.
      sig { returns(String) }
      attr_accessor :field

      # The matching operator for this filter.
      sig { returns(Moonbase::ItemsFilterValueMatches::Op::OrSymbol) }
      attr_accessor :op

      # The value to match against. Use ISO8601 format for dates and datetime fields.
      # For date fields, the time portion of the date-time will be ignored. For currency
      # fields, the amount should be in the smallest unit of currency (eg: cents for
      # USD).
      sig { returns(Moonbase::ItemsFilterValueMatches::Value::Variants) }
      attr_accessor :value

      # Include only items with a value in the given `field` that satisfies the `op`
      # condition.
      sig do
        params(
          field: String,
          op: Moonbase::ItemsFilterValueMatches::Op::OrSymbol,
          value: Moonbase::ItemsFilterValueMatches::Value::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # The id or key of the field in which values are matched.
        field:,
        # The matching operator for this filter.
        op:,
        # The value to match against. Use ISO8601 format for dates and datetime fields.
        # For date fields, the time portion of the date-time will be ignored. For currency
        # fields, the amount should be in the smallest unit of currency (eg: cents for
        # USD).
        value:
      )
      end

      sig do
        override.returns(
          {
            field: String,
            op: Moonbase::ItemsFilterValueMatches::Op::OrSymbol,
            value: Moonbase::ItemsFilterValueMatches::Value::Variants
          }
        )
      end
      def to_hash
      end

      # The matching operator for this filter.
      module Op
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::ItemsFilterValueMatches::Op) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STARTS_WITH =
          T.let(
            :starts_with,
            Moonbase::ItemsFilterValueMatches::Op::TaggedSymbol
          )
        ENDS_WITH =
          T.let(:ends_with, Moonbase::ItemsFilterValueMatches::Op::TaggedSymbol)
        CONTAINS =
          T.let(:contains, Moonbase::ItemsFilterValueMatches::Op::TaggedSymbol)
        NOT_CONTAINS =
          T.let(
            :not_contains,
            Moonbase::ItemsFilterValueMatches::Op::TaggedSymbol
          )
        EQ = T.let(:eq, Moonbase::ItemsFilterValueMatches::Op::TaggedSymbol)
        NOT_EQ =
          T.let(:not_eq, Moonbase::ItemsFilterValueMatches::Op::TaggedSymbol)
        GT = T.let(:gt, Moonbase::ItemsFilterValueMatches::Op::TaggedSymbol)
        LT = T.let(:lt, Moonbase::ItemsFilterValueMatches::Op::TaggedSymbol)
        GTE = T.let(:gte, Moonbase::ItemsFilterValueMatches::Op::TaggedSymbol)
        LTE = T.let(:lte, Moonbase::ItemsFilterValueMatches::Op::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::ItemsFilterValueMatches::Op::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The value to match against. Use ISO8601 format for dates and datetime fields.
      # For date fields, the time portion of the date-time will be ignored. For currency
      # fields, the amount should be in the smallest unit of currency (eg: cents for
      # USD).
      module Value
        extend Moonbase::Internal::Type::Union

        Variants = T.type_alias { T.any(String, Float, T::Boolean) }

        sig do
          override.returns(
            T::Array[Moonbase::ItemsFilterValueMatches::Value::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
