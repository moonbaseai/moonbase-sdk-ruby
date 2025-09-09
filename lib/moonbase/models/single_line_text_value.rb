# frozen_string_literal: true

module Moonbase
  module Models
    class SingleLineTextValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   A single line of text, up to 1024 characters long. It should not contain line
      #   breaks.
      #
      #   @return [String]
      required :data, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/text/single_line"]
      required :type, const: :"value/text/single_line"

      # @!method initialize(data:, type: :"value/text/single_line")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::SingleLineTextValue} for more details.
      #
      #   A single line of text
      #
      #   @param data [String] A single line of text, up to 1024 characters long. It should not contain line br
      #
      #   @param type [Symbol, :"value/text/single_line"]
    end
  end
end
