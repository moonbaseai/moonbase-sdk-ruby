# frozen_string_literal: true

module Moonbase
  module Models
    # A lightweight reference to the entity of `Constituent`, containing information
    # about what type of entity it is as well as the entity's id.
    module ConstituentEntityPointer
      extend Moonbase::Internal::Type::Union

      discriminator :type

      variant :call, -> { Moonbase::CallPointer }

      # A lightweight reference to a `Collection`, containing the minimal information needed to identify it.
      variant :collection, -> { Moonbase::CollectionPointer }

      # A reference to an `Item` within a specific `Collection`, providing the context needed to locate the item.
      variant :item, -> { Moonbase::ItemPointer }

      variant :file, -> { Moonbase::FilePointer }

      variant :meeting, -> { Moonbase::MeetingPointer }

      variant :email_message, -> { Moonbase::EmailMessagePointer }

      variant :note, -> { Moonbase::NotePointer }

      variant :program, -> { Moonbase::ProgramPointer }

      variant :program_message, -> { Moonbase::ProgramMessagePointer }

      variant :program_template, -> { Moonbase::ProgramTemplatePointer }

      variant :unsubscribe, -> { Moonbase::UnsubscribePointer }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::CallPointer, Moonbase::Models::CollectionPointer, Moonbase::Models::ItemPointer, Moonbase::Models::FilePointer, Moonbase::Models::MeetingPointer, Moonbase::Models::EmailMessagePointer, Moonbase::Models::NotePointer, Moonbase::Models::ProgramPointer, Moonbase::Models::ProgramMessagePointer, Moonbase::Models::ProgramTemplatePointer, Moonbase::Models::UnsubscribePointer)]
    end
  end
end
