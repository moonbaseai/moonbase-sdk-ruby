# typed: strong

module Moonbase
  module Models
    class TagPointerParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::TagPointerParam, Moonbase::Internal::AnyHash)
        end

      # Unique identifier of the tag.
      sig { returns(String) }
      attr_accessor :id

      # String representing the object’s type. Always `tag` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A lightweight reference to a `Tag` used in request bodies.
      sig { params(id: String, type: Symbol).returns(T.attached_class) }
      def self.new(
        # Unique identifier of the tag.
        id:,
        # String representing the object’s type. Always `tag` for this object.
        type: :tag
      )
      end

      sig { override.returns({ id: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
