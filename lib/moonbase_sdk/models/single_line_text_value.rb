# frozen_string_literal: true

module MoonbaseSDK
  module Models
    class SingleLineTextValue < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute text
      #
      #   @return [String]
      required :text, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/text/single_line"]
      required :type, const: :"value/text/single_line"

      # @!method initialize(text:, type: :"value/text/single_line")
      #   A single line of text
      #
      #   @param text [String]
      #   @param type [Symbol, :"value/text/single_line"]
    end
  end
end
