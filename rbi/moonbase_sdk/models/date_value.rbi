# typed: strong

module MoonbaseSDK
  module Models
    class DateValue < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::DateValue, MoonbaseSDK::Internal::AnyHash)
        end

      sig { returns(Date) }
      attr_accessor :date

      sig { returns(Symbol) }
      attr_accessor :type

      # Date without time
      sig { params(date: Date, type: Symbol).returns(T.attached_class) }
      def self.new(date:, type: :"value/date")
      end

      sig { override.returns({ date: Date, type: Symbol }) }
      def to_hash
      end
    end
  end
end
