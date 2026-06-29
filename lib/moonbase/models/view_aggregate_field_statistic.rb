# frozen_string_literal: true

module Moonbase
  module Models
    class ViewAggregateFieldStatistic < Moonbase::Internal::Type::BaseModel
      # @!attribute statistic
      #   The statistic to compute. Scalar statistics (sum, mean, max, min) require a
      #   number field as `value`.
      #
      #   @return [Symbol, Moonbase::Models::ViewAggregateFieldStatistic::Statistic]
      required :statistic, enum: -> { Moonbase::ViewAggregateFieldStatistic::Statistic }

      # @!attribute type
      #
      #   @return [Symbol, :field_statistic]
      required :type, const: :field_statistic

      # @!attribute value
      #   The field whose values the statistic is computed over.
      #
      #   @return [String]
      required :value, String

      # @!attribute group
      #   An optional field whose values bucket the statistic.
      #
      #   @return [String, nil]
      optional :group, String

      # @!attribute weight
      #   An optional percentage field used to weight the statistic. Only supported for
      #   scalar statistics.
      #
      #   @return [String, nil]
      optional :weight, String

      # @!method initialize(statistic:, value:, group: nil, weight: nil, type: :field_statistic)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ViewAggregateFieldStatistic} for more details.
      #
      #   Computes a statistic over the values of a field.
      #
      #   @param statistic [Symbol, Moonbase::Models::ViewAggregateFieldStatistic::Statistic] The statistic to compute. Scalar statistics (sum, mean, max, min) require a numb
      #
      #   @param value [String] The field whose values the statistic is computed over.
      #
      #   @param group [String] An optional field whose values bucket the statistic.
      #
      #   @param weight [String] An optional percentage field used to weight the statistic. Only supported for sc
      #
      #   @param type [Symbol, :field_statistic]

      # The statistic to compute. Scalar statistics (sum, mean, max, min) require a
      # number field as `value`.
      #
      # @see Moonbase::Models::ViewAggregateFieldStatistic#statistic
      module Statistic
        extend Moonbase::Internal::Type::Enum

        COUNT = :count
        SUM = :sum
        MEAN = :mean
        MAX = :max
        MIN = :min
        FILLED_PERCENTAGE = :filled_percentage

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
