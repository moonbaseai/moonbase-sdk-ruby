# typed: strong

module Moonbase
  module Models
    class Note < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Note, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The main content of the note.
      sig { returns(Moonbase::FormattedText) }
      attr_reader :body

      sig { params(body: Moonbase::FormattedText::OrHash).void }
      attr_writer :body

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # String representing the object’s type. Always `note` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # A short, system-generated summary of the note's content.
      sig { returns(T.nilable(String)) }
      attr_reader :summary

      sig { params(summary: String).void }
      attr_writer :summary

      # An optional title for the note.
      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      # The Note object represents a block of text content, often used for meeting notes
      # or summaries.
      sig do
        params(
          id: String,
          body: Moonbase::FormattedText::OrHash,
          created_at: Time,
          updated_at: Time,
          summary: String,
          title: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The main content of the note.
        body:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # A short, system-generated summary of the note's content.
        summary: nil,
        # An optional title for the note.
        title: nil,
        # String representing the object’s type. Always `note` for this object.
        type: :note
      )
      end

      sig do
        override.returns(
          {
            id: String,
            body: Moonbase::FormattedText,
            created_at: Time,
            type: Symbol,
            updated_at: Time,
            summary: String,
            title: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
