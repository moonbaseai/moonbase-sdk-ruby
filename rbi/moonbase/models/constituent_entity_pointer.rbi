# typed: strong

module Moonbase
  module Models
    # A lightweight reference to the entity of `Constituent`, containing information
    # about what type of entity it is as well as the entity's id.
    module ConstituentEntityPointer
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Moonbase::CallPointer,
            Moonbase::CollectionPointer,
            Moonbase::ItemPointer,
            Moonbase::FilePointer,
            Moonbase::MeetingPointer,
            Moonbase::EmailMessagePointer,
            Moonbase::NotePointer,
            Moonbase::ProgramPointer,
            Moonbase::ProgramMessagePointer,
            Moonbase::ProgramTemplatePointer,
            Moonbase::UnsubscribePointer
          )
        end

      sig do
        override.returns(T::Array[Moonbase::ConstituentEntityPointer::Variants])
      end
      def self.variants
      end
    end
  end
end
