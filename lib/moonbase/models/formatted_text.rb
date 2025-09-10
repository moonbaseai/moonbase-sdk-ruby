# frozen_string_literal: true

module Moonbase
  module Models
    class FormattedText < Moonbase::Internal::Type::BaseModel
      # @!attribute markdown
      #   The content formatted as Markdown text.
      #
      #   @return [String, nil]
      optional :markdown, String

      # @!method initialize(markdown: nil)
      #   Structured content that can be rendered in multiple formats, currently
      #   supporting Markdown.
      #
      #   @param markdown [String] The content formatted as Markdown text.
    end
  end
end
