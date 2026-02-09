# typed: strong

module Moonbase
  module Models
    class NoteCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::NoteCreateParams, Moonbase::Internal::AnyHash)
        end

      # The main content of the note.
      sig { returns(Moonbase::FormattedText) }
      attr_reader :body

      sig { params(body: Moonbase::FormattedText::OrHash).void }
      attr_writer :body

      # Link the Note to Moonbase items (person, organization, deal, task, or an item in
      # a custom collection), meetings, or calls.
      sig { returns(T.nilable(T::Array[Moonbase::Pointer])) }
      attr_reader :associations

      sig { params(associations: T::Array[Moonbase::Pointer::OrHash]).void }
      attr_writer :associations

      sig do
        params(
          body: Moonbase::FormattedText::OrHash,
          associations: T::Array[Moonbase::Pointer::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The main content of the note.
        body:,
        # Link the Note to Moonbase items (person, organization, deal, task, or an item in
        # a custom collection), meetings, or calls.
        associations: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body: Moonbase::FormattedText,
            associations: T::Array[Moonbase::Pointer],
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
