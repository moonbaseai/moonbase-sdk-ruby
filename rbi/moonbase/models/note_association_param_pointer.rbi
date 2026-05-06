# typed: strong

module Moonbase
  module Models
    # A reference to a call, meeting, or item to be associated with the note.
    module NoteAssociationParamPointer
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Moonbase::CallPointer,
            Moonbase::ItemPointerParam,
            Moonbase::MeetingPointer
          )
        end

      sig do
        override.returns(
          T::Array[Moonbase::NoteAssociationParamPointer::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
