# frozen_string_literal: true

module Moonbase
  module Models
    class MultiLineTextValue < Moonbase::Internal::Type::BaseModel
      # @!attribute text
      #
      #   @return [String]
      required :text, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/text/multi_line"]
      required :type, const: :"value/text/multi_line"

      # @!method initialize(text:, type: :"value/text/multi_line")
      #   Multiple lines of text
      #
      #   @param text [String]
      #   @param type [Symbol, :"value/text/multi_line"]
    end
  end
end
