# typed: strong

module Moonbase
  module Models
    class Pointer < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Pointer, Moonbase::Internal::AnyHash) }

      # Unique identifier for the referenced object.
      sig { returns(String) }
      attr_accessor :id

      # String indicating the type of the referenced object.
      sig { returns(String) }
      attr_accessor :type

      # A lightweight reference to another resource.
      sig { params(id: String, type: String).returns(T.attached_class) }
      def self.new(
        # Unique identifier for the referenced object.
        id:,
        # String indicating the type of the referenced object.
        type:
      )
      end

      sig { override.returns({ id: String, type: String }) }
      def to_hash
      end
    end
  end
end
