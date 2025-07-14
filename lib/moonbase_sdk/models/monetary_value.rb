# frozen_string_literal: true

module MoonbaseSDK
  module Models
    class MonetaryValue < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [MoonbaseSDK::Models::MonetaryValue::Amount]
      required :amount, -> { MoonbaseSDK::MonetaryValue::Amount }

      # @!attribute type
      #
      #   @return [Symbol, :"value/number/monetary"]
      required :type, const: :"value/number/monetary"

      # @!method initialize(amount:, type: :"value/number/monetary")
      #   Monetary or currency value
      #
      #   @param amount [MoonbaseSDK::Models::MonetaryValue::Amount]
      #   @param type [Symbol, :"value/number/monetary"]

      # @see MoonbaseSDK::Models::MonetaryValue#amount
      class Amount < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute amount_in_minor_units
        #
        #   @return [Integer]
        required :amount_in_minor_units, Integer

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute type
        #
        #   @return [Symbol, :currency]
        required :type, const: :currency

        # @!method initialize(amount_in_minor_units:, currency:, type: :currency)
        #   @param amount_in_minor_units [Integer]
        #   @param currency [String]
        #   @param type [Symbol, :currency]
      end
    end
  end
end
