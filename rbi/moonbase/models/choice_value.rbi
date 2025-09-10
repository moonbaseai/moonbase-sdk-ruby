# typed: strong

module Moonbase
  module Models
    class ChoiceValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ChoiceValue, Moonbase::Internal::AnyHash)
        end

      # An option that must match one of the predefined options for the field.
      sig { returns(Moonbase::ChoiceFieldOption) }
      attr_reader :data

      sig { params(data: Moonbase::ChoiceFieldOption::OrHash).void }
      attr_writer :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Selected choice option
      sig do
        params(data: Moonbase::ChoiceFieldOption::OrHash, type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # An option that must match one of the predefined options for the field.
        data:,
        type: :"value/choice"
      )
      end

      sig do
        override.returns({ data: Moonbase::ChoiceFieldOption, type: Symbol })
      end
      def to_hash
      end
    end
  end
end
