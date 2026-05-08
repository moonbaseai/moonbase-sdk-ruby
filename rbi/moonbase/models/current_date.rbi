# typed: strong

module Moonbase
  module Models
    class CurrentDate < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::CurrentDate, Moonbase::Internal::AnyHash)
        end

      sig { returns(Symbol) }
      attr_accessor :type

      # Resolves to today's date at the time the record is created.
      sig { params(type: Symbol).returns(T.attached_class) }
      def self.new(type: :current_date)
      end

      sig { override.returns({ type: Symbol }) }
      def to_hash
      end
    end
  end
end
