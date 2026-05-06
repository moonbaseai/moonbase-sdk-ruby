# frozen_string_literal: true

module Moonbase
  module Models
    # Related item reference
    module RelationFieldDefaultValueParam
      extend Moonbase::Internal::Type::Union

      discriminator :type

      # Related item reference
      variant :"value/relation", -> { Moonbase::RelationValueParam }

      # Resolves to the team member who creates the record.
      variant :current_member, -> { Moonbase::CurrentMember }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::RelationValueParam, Moonbase::Models::CurrentMember)]
    end
  end
end
