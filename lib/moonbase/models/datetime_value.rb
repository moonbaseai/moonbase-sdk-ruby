# frozen_string_literal: true

module Moonbase
  module Models
    class DatetimeValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Time]
      required :data, Time

      # @!attribute type
      #
      #   @return [Symbol, :"value/datetime"]
      required :type, const: :"value/datetime"

      # @!method initialize(data:, type: :"value/datetime")
      #   Date and time value
      #
      #   @param data [Time]
      #   @param type [Symbol, :"value/datetime"]
    end
  end
end
