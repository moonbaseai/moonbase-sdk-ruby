# frozen_string_literal: true

module Moonbase
  module Models
    class CurrentDatetime < Moonbase::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, :current_datetime]
      required :type, const: :current_datetime

      # @!method initialize(type: :current_datetime)
      #   Resolves to the current date and time at the time the record is created.
      #
      #   @param type [Symbol, :current_datetime]
    end
  end
end
