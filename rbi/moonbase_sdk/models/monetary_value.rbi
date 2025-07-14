# typed: strong

module MoonbaseSDK
  module Models
    class MonetaryValue < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::MonetaryValue, MoonbaseSDK::Internal::AnyHash)
        end

      sig { returns(MoonbaseSDK::MonetaryValue::Amount) }
      attr_reader :amount

      sig { params(amount: MoonbaseSDK::MonetaryValue::Amount::OrHash).void }
      attr_writer :amount

      sig { returns(Symbol) }
      attr_accessor :type

      # Monetary or currency value
      sig do
        params(
          amount: MoonbaseSDK::MonetaryValue::Amount::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(amount:, type: :"value/number/monetary")
      end

      sig do
        override.returns(
          { amount: MoonbaseSDK::MonetaryValue::Amount, type: Symbol }
        )
      end
      def to_hash
      end

      class Amount < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::MonetaryValue::Amount,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :amount_in_minor_units

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(Symbol) }
        attr_accessor :type

        sig do
          params(
            amount_in_minor_units: Integer,
            currency: String,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(amount_in_minor_units:, currency:, type: :currency)
        end

        sig do
          override.returns(
            { amount_in_minor_units: Integer, currency: String, type: Symbol }
          )
        end
        def to_hash
        end
      end
    end
  end
end
