# frozen_string_literal: true

module Moonbase
  module Models
    class CurrentDate < Moonbase::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, :current_date]
      required :type, const: :current_date

      # @!method initialize(type: :current_date)
      #   Resolves to today's date at the time the record is created.
      #
      #   @param type [Symbol, :current_date]
    end
  end
end
