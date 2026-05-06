# typed: strong

module Moonbase
  module Models
    class CurrentDatetime < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::CurrentDatetime, Moonbase::Internal::AnyHash)
        end

      sig { returns(Symbol) }
      attr_accessor :type

      # Resolves to the current date and time at the time the record is created.
      sig { params(type: Symbol).returns(T.attached_class) }
      def self.new(type: :current_datetime)
      end

      sig { override.returns({ type: Symbol }) }
      def to_hash
      end
    end
  end
end
