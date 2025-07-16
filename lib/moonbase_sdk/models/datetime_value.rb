# frozen_string_literal: true

module MoonbaseSDK
  module Models
    class DatetimeValue < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute datetime
      #
      #   @return [Time]
      required :datetime, Time

      # @!attribute type
      #
      #   @return [Symbol, :"value/datetime"]
      required :type, const: :"value/datetime"

      # @!method initialize(datetime:, type: :"value/datetime")
      #   Date and time value
      #
      #   @param datetime [Time]
      #   @param type [Symbol, :"value/datetime"]
    end
  end
end
