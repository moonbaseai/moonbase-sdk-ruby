# typed: strong

module Moonbase
  module Models
    class ViewAggregateFieldStatistic < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::ViewAggregateFieldStatistic,
            Moonbase::Internal::AnyHash
          )
        end

      # The statistic to compute. Scalar statistics (sum, mean, max, min) require a
      # number field as `value`.
      sig do
        returns(Moonbase::ViewAggregateFieldStatistic::Statistic::OrSymbol)
      end
      attr_accessor :statistic

      sig { returns(Symbol) }
      attr_accessor :type

      # The field whose values the statistic is computed over.
      sig { returns(String) }
      attr_accessor :value

      # An optional field whose values bucket the statistic.
      sig { returns(T.nilable(String)) }
      attr_reader :group

      sig { params(group: String).void }
      attr_writer :group

      # An optional percentage field used to weight the statistic. Only supported for
      # scalar statistics.
      sig { returns(T.nilable(String)) }
      attr_reader :weight

      sig { params(weight: String).void }
      attr_writer :weight

      # Computes a statistic over the values of a field.
      sig do
        params(
          statistic: Moonbase::ViewAggregateFieldStatistic::Statistic::OrSymbol,
          value: String,
          group: String,
          weight: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The statistic to compute. Scalar statistics (sum, mean, max, min) require a
        # number field as `value`.
        statistic:,
        # The field whose values the statistic is computed over.
        value:,
        # An optional field whose values bucket the statistic.
        group: nil,
        # An optional percentage field used to weight the statistic. Only supported for
        # scalar statistics.
        weight: nil,
        type: :field_statistic
      )
      end

      sig do
        override.returns(
          {
            statistic:
              Moonbase::ViewAggregateFieldStatistic::Statistic::OrSymbol,
            type: Symbol,
            value: String,
            group: String,
            weight: String
          }
        )
      end
      def to_hash
      end

      # The statistic to compute. Scalar statistics (sum, mean, max, min) require a
      # number field as `value`.
      module Statistic
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Moonbase::ViewAggregateFieldStatistic::Statistic)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COUNT =
          T.let(
            :count,
            Moonbase::ViewAggregateFieldStatistic::Statistic::TaggedSymbol
          )
        SUM =
          T.let(
            :sum,
            Moonbase::ViewAggregateFieldStatistic::Statistic::TaggedSymbol
          )
        MEAN =
          T.let(
            :mean,
            Moonbase::ViewAggregateFieldStatistic::Statistic::TaggedSymbol
          )
        MAX =
          T.let(
            :max,
            Moonbase::ViewAggregateFieldStatistic::Statistic::TaggedSymbol
          )
        MIN =
          T.let(
            :min,
            Moonbase::ViewAggregateFieldStatistic::Statistic::TaggedSymbol
          )
        FILLED_PERCENTAGE =
          T.let(
            :filled_percentage,
            Moonbase::ViewAggregateFieldStatistic::Statistic::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::ViewAggregateFieldStatistic::Statistic::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
