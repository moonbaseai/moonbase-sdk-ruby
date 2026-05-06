# frozen_string_literal: true

module Moonbase
  module Models
    # Date without time
    module DateFieldDefaultValueParam
      extend Moonbase::Internal::Type::Union

      discriminator :type

      # Date without time
      variant :"value/date", -> { Moonbase::DateValue }

      # Resolves to today's date at the time the record is created.
      variant :current_date, -> { Moonbase::CurrentDate }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::DateValue, Moonbase::Models::CurrentDate)]
    end
  end
end
