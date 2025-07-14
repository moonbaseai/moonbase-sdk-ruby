# typed: strong

module Moonbase
  module Models
    class Tagset < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Tagset, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Moonbase::Tagset::Links) }
      attr_reader :links

      sig { params(links: Moonbase::Tagset::Links::OrHash).void }
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
      sig { returns(T.nilable(T::Array[Moonbase::Tagset::Tag])) }
      attr_reader :tags

      sig { params(tags: T::Array[Moonbase::Tagset::Tag::OrHash]).void }
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
          links: Moonbase::Tagset::Links::OrHash,
          name: String,
          created_at: Time,
          description: String,
          tags: T::Array[Moonbase::Tagset::Tag::OrHash],
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
            links: Moonbase::Tagset::Links,
            name: String,
            type: Symbol,
            created_at: Time,
            description: String,
            tags: T::Array[Moonbase::Tagset::Tag],
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Tagset::Links, Moonbase::Internal::AnyHash)
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

      class Tag < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Tagset::Tag, Moonbase::Internal::AnyHash)
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
