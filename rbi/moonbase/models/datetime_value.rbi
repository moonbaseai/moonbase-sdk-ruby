# typed: strong

module Moonbase
  module Models
    class DatetimeValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::DatetimeValue, Moonbase::Internal::AnyHash)
        end

      sig { returns(Time) }
      attr_accessor :datetime

      sig { returns(Symbol) }
      attr_accessor :type

      # Date and time value
      sig { params(datetime: Time, type: Symbol).returns(T.attached_class) }
      def self.new(datetime:, type: :"value/datetime")
      end

      sig { override.returns({ datetime: Time, type: Symbol }) }
      def to_hash
      end
    end
  end
end
