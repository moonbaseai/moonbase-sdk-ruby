# frozen_string_literal: true

module Moonbase
  module Models
    class MultiLineTextValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   Text which may contain line breaks, can be up to 65,536 characters long. Do not
      #   use markdown formatting, just plain text.
      #
      #   @return [String]
      required :data, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/text/multi_line"]
      required :type, const: :"value/text/multi_line"

      # @!method initialize(data:, type: :"value/text/multi_line")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::MultiLineTextValue} for more details.
      #
      #   Multiple lines of text
      #
      #   @param data [String] Text which may contain line breaks, can be up to 65,536 characters long. Do not
      #
      #   @param type [Symbol, :"value/text/multi_line"]
    end
  end
end
