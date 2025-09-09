# typed: strong

module Moonbase
  module Models
    class DateValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::DateValue, Moonbase::Internal::AnyHash) }

      sig { returns(Date) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Date without time
      sig { params(data: Date, type: Symbol).returns(T.attached_class) }
      def self.new(data:, type: :"value/date")
      end

      sig { override.returns({ data: Date, type: Symbol }) }
      def to_hash
      end
    end
  end
end
