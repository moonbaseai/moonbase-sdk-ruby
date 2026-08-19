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

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # A list of `Field` objects that define the schema for items in this collection.
      sig { returns(T::Array[Moonbase::Field::Variants]) }
      attr_accessor :fields

      # `system` collections are managed by Moonbase (e.g., People, Organizations),
      # `form` collections back a Form, and `custom` collections are user-created.
      sig { returns(Moonbase::Collection::Kind::TaggedSymbol) }
      attr_accessor :kind

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

      # The collection's icon, as a Phosphor icon name in kebab-case (e.g. `users`,
      # `chart-bar`). Only present when an icon is set.
      sig { returns(T.nilable(String)) }
      attr_reader :icon_name

      sig { params(icon_name: String).void }
      attr_writer :icon_name

      # A list of saved `View` objects for presenting the collection's data.
      #
      # **Note:** Only present when requested using the `include` query parameter.
      sig { returns(T.nilable(T::Array[Moonbase::Collection::View])) }
      attr_reader :views

      sig { params(views: T::Array[Moonbase::Collection::View::OrHash]).void }
      attr_writer :views

      # A Collection is a container for structured data, similar to a database table or
      # spreadsheet. It defines a schema using a set of `Fields` and holds the data as a
      # list of `Items`.
      sig do
        params(
          id: String,
          created_at: Time,
          fields:
            T::Array[
              T.any(
                Moonbase::SingleLineTextField::OrHash,
                Moonbase::MultiLineTextField::OrHash,
                Moonbase::IdentifierField::OrHash,
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
          kind: Moonbase::Collection::Kind::OrSymbol,
          name: String,
          ref: String,
          updated_at: Time,
          description: String,
          icon_name: String,
          views: T::Array[Moonbase::Collection::View::OrHash],
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # A list of `Field` objects that define the schema for items in this collection.
        fields:,
        # `system` collections are managed by Moonbase (e.g., People, Organizations),
        # `form` collections back a Form, and `custom` collections are user-created.
        kind:,
        # The user-facing name of the collection (e.g., “Organizations”).
        name:,
        # A unique, stable, machine-readable identifier for the collection. This reference
        # is used in API requests and does not change even if the `name` is updated.
        ref:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # An optional, longer-form description of the collection's purpose.
        description: nil,
        # The collection's icon, as a Phosphor icon name in kebab-case (e.g. `users`,
        # `chart-bar`). Only present when an icon is set.
        icon_name: nil,
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
            created_at: Time,
            fields: T::Array[Moonbase::Field::Variants],
            kind: Moonbase::Collection::Kind::TaggedSymbol,
            name: String,
            ref: String,
            type: Symbol,
            updated_at: Time,
            description: String,
            icon_name: String,
            views: T::Array[Moonbase::Collection::View]
          }
        )
      end
      def to_hash
      end

      # `system` collections are managed by Moonbase (e.g., People, Organizations),
      # `form` collections back a Form, and `custom` collections are user-created.
      module Kind
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::Collection::Kind) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SYSTEM = T.let(:system, Moonbase::Collection::Kind::TaggedSymbol)
        FORM = T.let(:form, Moonbase::Collection::Kind::TaggedSymbol)
        CUSTOM = T.let(:custom, Moonbase::Collection::Kind::TaggedSymbol)

        sig do
          override.returns(T::Array[Moonbase::Collection::Kind::TaggedSymbol])
        end
        def self.values
        end
      end

      class View < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Collection::View, Moonbase::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        # A lightweight reference to a `Collection`, containing the minimal information
        # needed to identify it.
        sig { returns(Moonbase::CollectionPointer) }
        attr_reader :collection

        sig { params(collection: Moonbase::CollectionPointer::OrHash).void }
        attr_writer :collection

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(Moonbase::Collection::View::ViewType::TaggedSymbol) }
        attr_accessor :view_type

        sig do
          params(
            id: String,
            collection: Moonbase::CollectionPointer::OrHash,
            created_at: Time,
            name: String,
            updated_at: Time,
            view_type: Moonbase::Collection::View::ViewType::OrSymbol,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # A lightweight reference to a `Collection`, containing the minimal information
          # needed to identify it.
          collection:,
          created_at:,
          name:,
          updated_at:,
          view_type:,
          type: :view
        )
        end

        sig do
          override.returns(
            {
              id: String,
              collection: Moonbase::CollectionPointer,
              created_at: Time,
              name: String,
              type: Symbol,
              updated_at: Time,
              view_type: Moonbase::Collection::View::ViewType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module ViewType
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Moonbase::Collection::View::ViewType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TABLE =
            T.let(:table, Moonbase::Collection::View::ViewType::TaggedSymbol)
          BOARD =
            T.let(:board, Moonbase::Collection::View::ViewType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Moonbase::Collection::View::ViewType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
