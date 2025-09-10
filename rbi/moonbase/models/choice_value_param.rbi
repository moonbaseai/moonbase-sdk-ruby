# typed: strong

module Moonbase
  module Models
    class ChoiceValueParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ChoiceValueParam, Moonbase::Internal::AnyHash)
        end

      # An option that must match one of the predefined options for the field.
      sig { returns(T.any(Moonbase::ChoiceFieldOption, Moonbase::Pointer)) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Selected choice option
      sig do
        params(
          data:
            T.any(
              Moonbase::ChoiceFieldOption::OrHash,
              Moonbase::Pointer::OrHash
            ),
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
          {
            data: T.any(Moonbase::ChoiceFieldOption, Moonbase::Pointer),
            type: Symbol
          }
        )
      end
      def to_hash
      end

      # An option that must match one of the predefined options for the field.
      module Data
        extend Moonbase::Internal::Type::Union

        Variants =
          T.type_alias { T.any(Moonbase::ChoiceFieldOption, Moonbase::Pointer) }

        sig do
          override.returns(T::Array[Moonbase::ChoiceValueParam::Data::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
