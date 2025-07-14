# frozen_string_literal: true

module MoonbaseSDK
  module Models
    class Choice < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute option
      #
      #   @return [MoonbaseSDK::Models::Choice::Option]
      required :option, -> { MoonbaseSDK::Choice::Option }

      # @!attribute type
      #
      #   @return [Symbol, :"value/choice"]
      required :type, const: :"value/choice"

      # @!method initialize(option:, type: :"value/choice")
      #   Selected choice option
      #
      #   @param option [MoonbaseSDK::Models::Choice::Option]
      #   @param type [Symbol, :"value/choice"]

      # @see MoonbaseSDK::Models::Choice#option
      class Option < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #
        #   @return [Symbol, :field_option]
        required :type, const: :field_option

        # @!attribute label
        #
        #   @return [String, nil]
        optional :label, String

        # @!method initialize(id:, label: nil, type: :field_option)
        #   @param id [String]
        #   @param label [String]
        #   @param type [Symbol, :field_option]
      end
    end
  end
end
