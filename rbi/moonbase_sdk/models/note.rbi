# typed: strong

module MoonbaseSDK
  module Models
    class Note < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::Note, MoonbaseSDK::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(MoonbaseSDK::Note::Links) }
      attr_reader :links

      sig { params(links: MoonbaseSDK::Note::Links::OrHash).void }
      attr_writer :links

      # String representing the object’s type. Always `note` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # The main content of the note.
      sig { returns(T.nilable(String)) }
      attr_reader :body

      sig { params(body: String).void }
      attr_writer :body

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

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

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The Note object represents a block of text content, often used for meeting notes
      # or summaries.
      sig do
        params(
          id: String,
          links: MoonbaseSDK::Note::Links::OrHash,
          body: String,
          created_at: Time,
          summary: String,
          title: String,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        links:,
        # The main content of the note.
        body: nil,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # A short, system-generated summary of the note's content.
        summary: nil,
        # An optional title for the note.
        title: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # String representing the object’s type. Always `note` for this object.
        type: :note
      )
      end

      sig do
        override.returns(
          {
            id: String,
            links: MoonbaseSDK::Note::Links,
            type: Symbol,
            body: String,
            created_at: Time,
            summary: String,
            title: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MoonbaseSDK::Note::Links, MoonbaseSDK::Internal::AnyHash)
          end

        # The canonical URL for this object.
        sig { returns(String) }
        attr_accessor :self_

        sig { params(self_: String).returns(T.attached_class) }
        def self.new(
          # The canonical URL for this object.
          self_:
        )
        end

        sig { override.returns({ self_: String }) }
        def to_hash
        end
      end
    end
  end
end
