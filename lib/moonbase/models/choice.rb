# frozen_string_literal: true

module Moonbase
  module Models
    class Choice < Moonbase::Internal::Type::BaseModel
      # @!attribute option
      #
      #   @return [Moonbase::Models::Choice::Option]
      required :option, -> { Moonbase::Choice::Option }

      # @!attribute type
      #
      #   @return [Symbol, :"value/choice"]
      required :type, const: :"value/choice"

      # @!method initialize(option:, type: :"value/choice")
      #   Selected choice option
      #
      #   @param option [Moonbase::Models::Choice::Option]
      #   @param type [Symbol, :"value/choice"]

      # @see Moonbase::Models::Choice#option
      class Option < Moonbase::Internal::Type::BaseModel
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
