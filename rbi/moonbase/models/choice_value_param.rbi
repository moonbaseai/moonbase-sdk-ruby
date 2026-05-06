# typed: strong

module Moonbase
  module Models
    class ChoiceValueParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ChoiceValueParam, Moonbase::Internal::AnyHash)
        end

      # An option that must match one of the predefined options for the field.
      sig { returns(Moonbase::ChoiceFieldOptionPointer) }
      attr_reader :data

      sig { params(data: Moonbase::ChoiceFieldOptionPointer::OrHash).void }
      attr_writer :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Selected choice option
      sig do
        params(
          data: Moonbase::ChoiceFieldOptionPointer::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # An option that must match one of the predefined options for the field.
        data:,
        type: :"value/choice"
      )
      end

      sig do
        override.returns(
          { data: Moonbase::ChoiceFieldOptionPointer, type: Symbol }
        )
      end
      def to_hash
      end
    end
  end
end
