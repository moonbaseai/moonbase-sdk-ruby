# typed: strong

module Moonbase
  module Models
    class MultiLineTextValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::MultiLineTextValue, Moonbase::Internal::AnyHash)
        end

      # Text which may contain line breaks, can be up to 65,536 characters long. Do not
      # use markdown formatting, just plain text.
      sig { returns(String) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Multiple lines of text
      sig { params(data: String, type: Symbol).returns(T.attached_class) }
      def self.new(
        # Text which may contain line breaks, can be up to 65,536 characters long. Do not
        # use markdown formatting, just plain text.
        data:,
        type: :"value/text/multi_line"
      )
      end

      sig { override.returns({ data: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
