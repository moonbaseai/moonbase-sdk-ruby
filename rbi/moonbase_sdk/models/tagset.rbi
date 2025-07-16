# typed: strong

module MoonbaseSDK
  module Models
    class Tagset < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::Tagset, MoonbaseSDK::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(MoonbaseSDK::Tagset::Links) }
      attr_reader :links

      sig { params(links: MoonbaseSDK::Tagset::Links::OrHash).void }
      attr_writer :links

      # The name of the tagset.
      sig { returns(String) }
      attr_accessor :name

      # String representing the object’s type. Always `tagset` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # An optional description of the tagset's purpose.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # A list of `Tag` objects belonging to this tagset.
      sig { returns(T.nilable(T::Array[MoonbaseSDK::Tagset::Tag])) }
      attr_reader :tags

      sig { params(tags: T::Array[MoonbaseSDK::Tagset::Tag::OrHash]).void }
      attr_writer :tags

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # A Tagset is a collection of `Tag` objects that can be applied within a specific
      # `Inbox`.
      sig do
        params(
          id: String,
          links: MoonbaseSDK::Tagset::Links::OrHash,
          name: String,
          created_at: Time,
          description: String,
          tags: T::Array[MoonbaseSDK::Tagset::Tag::OrHash],
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        links:,
        # The name of the tagset.
        name:,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # An optional description of the tagset's purpose.
        description: nil,
        # A list of `Tag` objects belonging to this tagset.
        tags: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # String representing the object’s type. Always `tagset` for this object.
        type: :tagset
      )
      end

      sig do
        override.returns(
          {
            id: String,
            links: MoonbaseSDK::Tagset::Links,
            name: String,
            type: Symbol,
            created_at: Time,
            description: String,
            tags: T::Array[MoonbaseSDK::Tagset::Tag],
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MoonbaseSDK::Tagset::Links, MoonbaseSDK::Internal::AnyHash)
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

      class Tag < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MoonbaseSDK::Tagset::Tag, MoonbaseSDK::Internal::AnyHash)
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # The name of the tag.
        sig { returns(String) }
        attr_accessor :name

        # String representing the object’s type. Always `tag` for this object.
        sig { returns(Symbol) }
        attr_accessor :type

        # A Tag is a label that can be applied to `Conversation` objects for organization
        # and filtering.
        sig do
          params(id: String, name: String, type: Symbol).returns(
            T.attached_class
          )
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          # The name of the tag.
          name:,
          # String representing the object’s type. Always `tag` for this object.
          type: :tag
        )
        end

        sig { override.returns({ id: String, name: String, type: Symbol }) }
        def to_hash
        end
      end
    end
  end
end
