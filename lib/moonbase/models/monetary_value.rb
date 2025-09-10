# frozen_string_literal: true

module Moonbase
  module Models
    class MonetaryValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   A monetary amount is composed of the amount in the smallest unit of a currency
      #   and an ISO currency code.
      #
      #   @return [Moonbase::Models::MonetaryValue::Data]
      required :data, -> { Moonbase::MonetaryValue::Data }

      # @!attribute type
      #
      #   @return [Symbol, :"value/number/monetary"]
      required :type, const: :"value/number/monetary"

      # @!method initialize(data:, type: :"value/number/monetary")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::MonetaryValue} for more details.
      #
      #   Monetary or currency value
      #
      #   @param data [Moonbase::Models::MonetaryValue::Data] A monetary amount is composed of the amount in the smallest unit of a currency a
      #
      #   @param type [Symbol, :"value/number/monetary"]

      # @see Moonbase::Models::MonetaryValue#data
      class Data < Moonbase::Internal::Type::BaseModel
        # @!attribute currency
        #   The 3-letter ISO 4217 currency code
        #
        #   @return [String]
        required :currency, String

        # @!attribute in_minor_units
        #   The amount in the minor units of the currency. For example, $10 (10 USD) would
        #   be 1000. Minor units conversion depends on the currency.
        #
        #   @return [Integer]
        required :in_minor_units, Integer

        # @!method initialize(currency:, in_minor_units:)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::MonetaryValue::Data} for more details.
        #
        #   A monetary amount is composed of the amount in the smallest unit of a currency
        #   and an ISO currency code.
        #
        #   @param currency [String] The 3-letter ISO 4217 currency code
        #
        #   @param in_minor_units [Integer] The amount in the minor units of the currency. For example, $10 (10 USD) would b
      end
    end
  end
end
