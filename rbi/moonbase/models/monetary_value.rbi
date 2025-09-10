# typed: strong

module Moonbase
  module Models
    class MonetaryValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::MonetaryValue, Moonbase::Internal::AnyHash)
        end

      # A monetary amount is composed of the amount in the smallest unit of a currency
      # and an ISO currency code.
      sig { returns(Moonbase::MonetaryValue::Data) }
      attr_reader :data

      sig { params(data: Moonbase::MonetaryValue::Data::OrHash).void }
      attr_writer :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Monetary or currency value
      sig do
        params(
          data: Moonbase::MonetaryValue::Data::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A monetary amount is composed of the amount in the smallest unit of a currency
        # and an ISO currency code.
        data:,
        type: :"value/number/monetary"
      )
      end

      sig do
        override.returns({ data: Moonbase::MonetaryValue::Data, type: Symbol })
      end
      def to_hash
      end

      class Data < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::MonetaryValue::Data, Moonbase::Internal::AnyHash)
          end

        # The 3-letter ISO 4217 currency code
        sig { returns(String) }
        attr_accessor :currency

        # The amount in the minor units of the currency. For example, $10 (10 USD) would
        # be 1000. Minor units conversion depends on the currency.
        sig { returns(Integer) }
        attr_accessor :in_minor_units

        # A monetary amount is composed of the amount in the smallest unit of a currency
        # and an ISO currency code.
        sig do
          params(currency: String, in_minor_units: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The 3-letter ISO 4217 currency code
          currency:,
          # The amount in the minor units of the currency. For example, $10 (10 USD) would
          # be 1000. Minor units conversion depends on the currency.
          in_minor_units:
        )
        end

        sig { override.returns({ currency: String, in_minor_units: Integer }) }
        def to_hash
        end
      end
    end
  end
end
