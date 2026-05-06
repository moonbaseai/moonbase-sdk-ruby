# frozen_string_literal: true

module Moonbase
  module Models
    # Date and time value
    module DatetimeFieldDefaultValueParam
      extend Moonbase::Internal::Type::Union

      discriminator :type

      # Date and time value
      variant :"value/datetime", -> { Moonbase::DatetimeValue }

      # Resolves to the current date and time at the time the record is created.
      variant :current_datetime, -> { Moonbase::CurrentDatetime }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::DatetimeValue, Moonbase::Models::CurrentDatetime)]
    end
  end
end
