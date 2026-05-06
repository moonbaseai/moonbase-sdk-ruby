# typed: strong

module Moonbase
  module Models
    class CurrentMember < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::CurrentMember, Moonbase::Internal::AnyHash)
        end

      sig { returns(Symbol) }
      attr_accessor :type

      # Resolves to the team member who creates the record.
      sig { params(type: Symbol).returns(T.attached_class) }
      def self.new(type: :current_member)
      end

      sig { override.returns({ type: Symbol }) }
      def to_hash
      end
    end
  end
end
