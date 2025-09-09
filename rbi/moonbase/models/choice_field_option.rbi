# typed: strong

module Moonbase
  module Models
    class ChoiceFieldOption < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ChoiceFieldOption, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the option.
      sig { returns(String) }
      attr_accessor :id

      # The human-readable text displayed for this option.
      sig { returns(String) }
      attr_accessor :label

      # String representing the object’s type. Always `choice_field_option` for this
      # object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Represents a single selectable option within a choice field.
      sig do
        params(id: String, label: String, type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # Unique identifier for the option.
        id:,
        # The human-readable text displayed for this option.
        label:,
        # String representing the object’s type. Always `choice_field_option` for this
        # object.
        type: :choice_field_option
      )
      end

      sig { override.returns({ id: String, label: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
