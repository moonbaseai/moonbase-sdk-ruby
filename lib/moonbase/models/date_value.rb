# frozen_string_literal: true

module Moonbase
  module Models
    class DateValue < Moonbase::Internal::Type::BaseModel
      # @!attribute date
      #
      #   @return [Date]
      required :date, Date

      # @!attribute type
      #
      #   @return [Symbol, :"value/date"]
      required :type, const: :"value/date"

      # @!method initialize(date:, type: :"value/date")
      #   Date without time
      #
      #   @param date [Date]
      #   @param type [Symbol, :"value/date"]
    end
  end
end
