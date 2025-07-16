# typed: strong

module Moonbase
  module Models
    class Collection < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::Collection, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # A hash of related links.
      sig { returns(Moonbase::Collection::Links) }
      attr_reader :links

      sig { params(links: Moonbase::Collection::Links::OrHash).void }
      attr_writer :links

      # The user-facing name of the collection (e.g., “Organizations”).
      sig { returns(String) }
      attr_accessor :name

      # A unique, stable, machine-readable identifier for the collection. This reference
      # is used in API requests and does not change even if the `name` is updated.
      sig { returns(String) }
      attr_accessor :ref

      # String representing the object’s type. Always `collection` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # An optional, longer-form description of the collection's purpose.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # A list of `Field` objects that define the schema for items in this collection.
      sig { returns(T.nilable(T::Array[Moonbase::Field])) }
      attr_reader :fields

      sig { params(fields: T::Array[Moonbase::Field::OrHash]).void }
      attr_writer :fields

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # A list of saved `View` objects for presenting the collection's data.
      sig { returns(T.nilable(T::Array[Moonbase::View])) }
      attr_reader :views

      sig { params(views: T::Array[Moonbase::View]).void }
      attr_writer :views

      # A Collection is a container for structured data, similar to a database table or
      # spreadsheet. It defines a schema using a set of `Fields` and holds the data as a
      # list of `Items`.
      sig do
        params(
          id: String,
          links: Moonbase::Collection::Links::OrHash,
          name: String,
          ref: String,
          created_at: Time,
          description: String,
          fields: T::Array[Moonbase::Field::OrHash],
          updated_at: Time,
          views: T::Array[Moonbase::View],
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # A hash of related links.
        links:,
        # The user-facing name of the collection (e.g., “Organizations”).
        name:,
        # A unique, stable, machine-readable identifier for the collection. This reference
        # is used in API requests and does not change even if the `name` is updated.
        ref:,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # An optional, longer-form description of the collection's purpose.
        description: nil,
        # A list of `Field` objects that define the schema for items in this collection.
        fields: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # A list of saved `View` objects for presenting the collection's data.
        views: nil,
        # String representing the object’s type. Always `collection` for this object.
        type: :collection
      )
      end

      sig do
        override.returns(
          {
            id: String,
            links: Moonbase::Collection::Links,
            name: String,
            ref: String,
            type: Symbol,
            created_at: Time,
            description: String,
            fields: T::Array[Moonbase::Field],
            updated_at: Time,
            views: T::Array[Moonbase::View]
          }
        )
      end
      def to_hash
      end

      class Links < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Collection::Links, Moonbase::Internal::AnyHash)
          end

        # The canonical URL for this object.
        sig { returns(String) }
        attr_accessor :self_

        # A hash of related links.
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
