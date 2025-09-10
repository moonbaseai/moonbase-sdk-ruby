# frozen_string_literal: true

module Moonbase
  module Models
    class DateValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Date]
      required :data, Date

      # @!attribute type
      #
      #   @return [Symbol, :"value/date"]
      required :type, const: :"value/date"

      # @!method initialize(data:, type: :"value/date")
      #   Date without time
      #
      #   @param data [Date]
      #   @param type [Symbol, :"value/date"]
    end
  end
end
