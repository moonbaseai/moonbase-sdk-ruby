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

      # If `true`, this is one of the foundational collections (People, Organizations,
      # Deals, or Tasks).
      sig { returns(T::Boolean) }
      attr_accessor :core

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # A list of `Field` objects that define the schema for items in this collection.
      sig { returns(T::Array[Moonbase::Field::Variants]) }
      attr_accessor :fields

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

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An optional, longer-form description of the collection's purpose.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # A list of saved `View` objects for presenting the collection's data.
      #
      # **Note:** Only present when requested using the `include` query parameter.
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
          core: T::Boolean,
          created_at: Time,
          fields:
            T::Array[
              T.any(
                Moonbase::SingleLineTextField::OrHash,
                Moonbase::MultiLineTextField::OrHash,
                Moonbase::IntegerField::OrHash,
                Moonbase::FloatField::OrHash,
                Moonbase::MonetaryField::OrHash,
                Moonbase::PercentageField::OrHash,
                Moonbase::BooleanField::OrHash,
                Moonbase::EmailField::OrHash,
                Moonbase::URLField::OrHash,
                Moonbase::DomainField::OrHash,
                Moonbase::SocialXField::OrHash,
                Moonbase::SocialLinkedInField::OrHash,
                Moonbase::TelephoneNumberField::OrHash,
                Moonbase::GeoField::OrHash,
                Moonbase::DateField::OrHash,
                Moonbase::DatetimeField::OrHash,
                Moonbase::ChoiceField::OrHash,
                Moonbase::StageField::OrHash,
                Moonbase::RelationField::OrHash
              )
            ],
          name: String,
          ref: String,
          updated_at: Time,
          description: String,
          views: T::Array[Moonbase::View],
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # If `true`, this is one of the foundational collections (People, Organizations,
        # Deals, or Tasks).
        core:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # A list of `Field` objects that define the schema for items in this collection.
        fields:,
        # The user-facing name of the collection (e.g., “Organizations”).
        name:,
        # A unique, stable, machine-readable identifier for the collection. This reference
        # is used in API requests and does not change even if the `name` is updated.
        ref:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # An optional, longer-form description of the collection's purpose.
        description: nil,
        # A list of saved `View` objects for presenting the collection's data.
        #
        # **Note:** Only present when requested using the `include` query parameter.
        views: nil,
        # String representing the object’s type. Always `collection` for this object.
        type: :collection
      )
      end

      sig do
        override.returns(
          {
            id: String,
            core: T::Boolean,
            created_at: Time,
            fields: T::Array[Moonbase::Field::Variants],
            name: String,
            ref: String,
            type: Symbol,
            updated_at: Time,
            description: String,
            views: T::Array[Moonbase::View]
          }
        )
      end
      def to_hash
      end
    end
  end
end
