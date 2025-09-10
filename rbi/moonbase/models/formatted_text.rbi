# typed: strong

module Moonbase
  module Models
    class FormattedText < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::FormattedText, Moonbase::Internal::AnyHash)
        end

      # The content formatted as Markdown text.
      sig { returns(T.nilable(String)) }
      attr_reader :markdown

      sig { params(markdown: String).void }
      attr_writer :markdown

      # Structured content that can be rendered in multiple formats, currently
      # supporting Markdown.
      sig { params(markdown: String).returns(T.attached_class) }
      def self.new(
        # The content formatted as Markdown text.
        markdown: nil
      )
      end

      sig { override.returns({ markdown: String }) }
      def to_hash
      end
    end
  end
end
