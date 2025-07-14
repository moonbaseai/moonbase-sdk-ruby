# typed: strong

module MoonbaseSDK
  module Models
    class SingleLineTextValue < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MoonbaseSDK::SingleLineTextValue,
            MoonbaseSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :text

      sig { returns(Symbol) }
      attr_accessor :type

      # A single line of text
      sig { params(text: String, type: Symbol).returns(T.attached_class) }
      def self.new(text:, type: :"value/text/single_line")
      end

      sig { override.returns({ text: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
