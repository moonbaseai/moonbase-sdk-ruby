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

      sig do
        params(
          body: Moonbase::FormattedText::OrHash,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The main content of the note.
        body:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body: Moonbase::FormattedText,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
