# frozen_string_literal: true

module Moonbase
  module Models
    # A reference to a call, meeting, or item associated with the note.
    module NoteAssociationPointer
      extend Moonbase::Internal::Type::Union

      discriminator :type

      variant :call, -> { Moonbase::CallPointer }

      # A reference to an `Item` within a specific `Collection`, providing the context needed to locate the item.
      variant :item, -> { Moonbase::ItemPointer }

      variant :meeting, -> { Moonbase::MeetingPointer }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::CallPointer, Moonbase::Models::ItemPointer, Moonbase::Models::MeetingPointer)]
    end
  end
end
