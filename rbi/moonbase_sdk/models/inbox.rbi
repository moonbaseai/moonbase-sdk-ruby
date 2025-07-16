# typed: strong

module MoonbaseSDK
  module Models
    class Inbox < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::Inbox, MoonbaseSDK::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(MoonbaseSDK::Inbox::Links) }
      attr_reader :links

      sig { params(links: MoonbaseSDK::Inbox::Links::OrHash).void }
      attr_writer :links

      # The display name of the inbox.
      sig { returns(String) }
      attr_accessor :name

      # String representing the object’s type. Always `inbox` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # The `Tagset` associated with this inbox, which defines the tags available for
      # its conversations.
      sig { returns(T.nilable(MoonbaseSDK::Tagset)) }
      attr_reader :tagset

      sig { params(tagset: MoonbaseSDK::Tagset::OrHash).void }
      attr_writer :tagset

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The Inbox object represents a shared inbox for receiving and sending messages.
      sig do
        params(
          id: String,
          links: MoonbaseSDK::Inbox::Links::OrHash,
          name: String,
          created_at: Time,
          tagset: MoonbaseSDK::Tagset::OrHash,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        links:,
        # The display name of the inbox.
        name:,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # The `Tagset` associated with this inbox, which defines the tags available for
        # its conversations.
        tagset: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # String representing the object’s type. Always `inbox` for this object.
        type: :inbox
      )
      end

      sig do
        override.returns(
          {
            id: String,
            links: MoonbaseSDK::Inbox::Links,
            name: String,
            type: Symbol,
            created_at: Time,
            tagset: MoonbaseSDK::Tagset,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MoonbaseSDK::Inbox::Links, MoonbaseSDK::Internal::AnyHash)
          end

        # The canonical URL for this object.
        sig { returns(String) }
        attr_accessor :self_

        # A link to the `Tagset` for this inbox.
        sig { returns(T.nilable(String)) }
        attr_reader :tagset

        sig { params(tagset: String).void }
        attr_writer :tagset

        sig { params(self_: String, tagset: String).returns(T.attached_class) }
        def self.new(
          # The canonical URL for this object.
          self_:,
          # A link to the `Tagset` for this inbox.
          tagset: nil
        )
        end

        sig { override.returns({ self_: String, tagset: String }) }
        def to_hash
        end
      end
    end
  end
end
