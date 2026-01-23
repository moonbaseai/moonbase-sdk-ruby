# typed: strong

module Moonbase
  module Models
    class NoteUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::NoteUpdateParams, Moonbase::Internal::AnyHash)
        end

      # The main content of the note.
      sig { returns(Moonbase::FormattedText) }
      attr_reader :body

      sig { params(body: Moonbase::FormattedText::OrHash).void }
      attr_writer :body

      # The current lock version of the note for optimistic concurrency control.
      sig { returns(Integer) }
      attr_accessor :lock_version

      sig do
        params(
          body: Moonbase::FormattedText::OrHash,
          lock_version: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The main content of the note.
        body:,
        # The current lock version of the note for optimistic concurrency control.
        lock_version:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body: Moonbase::FormattedText,
            lock_version: Integer,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
