# frozen_string_literal: true

module Moonbase
  module Models
    # A reference to a call, meeting, or item to be associated with the note.
    module NoteAssociationParamPointer
      extend Moonbase::Internal::Type::Union

      discriminator :type

      variant :call, -> { Moonbase::CallPointer }

      # A lightweight reference to an `Item` used in request bodies.
      variant :item, -> { Moonbase::ItemPointerParam }

      variant :meeting, -> { Moonbase::MeetingPointer }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::CallPointer, Moonbase::Models::ItemPointerParam, Moonbase::Models::MeetingPointer)]
    end
  end
end
