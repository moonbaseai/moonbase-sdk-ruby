# typed: strong

module Moonbase
  module Models
    class SingleLineTextValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::SingleLineTextValue, Moonbase::Internal::AnyHash)
        end

      # A single line of text, up to 1024 characters long. It should not contain line
      # breaks.
      sig { returns(String) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # A single line of text
      sig { params(data: String, type: Symbol).returns(T.attached_class) }
      def self.new(
        # A single line of text, up to 1024 characters long. It should not contain line
        # breaks.
        data:,
        type: :"value/text/single_line"
      )
      end

      sig { override.returns({ data: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
