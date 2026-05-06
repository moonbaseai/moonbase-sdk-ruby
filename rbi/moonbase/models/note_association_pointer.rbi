# typed: strong

module Moonbase
  module Models
    # A reference to a call, meeting, or item associated with the note.
    module NoteAssociationPointer
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Moonbase::CallPointer,
            Moonbase::ItemPointer,
            Moonbase::MeetingPointer
          )
        end

      sig do
        override.returns(T::Array[Moonbase::NoteAssociationPointer::Variants])
      end
      def self.variants
      end
    end
  end
end
