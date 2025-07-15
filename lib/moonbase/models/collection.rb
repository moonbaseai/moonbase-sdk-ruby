# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Collections#retrieve
    class Collection < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute links
      #   A hash of related links.
      #
      #   @return [Moonbase::Models::Collection::Links]
      required :links, -> { Moonbase::Collection::Links }

      # @!attribute name
      #   The user-facing name of the collection (e.g., “Organizations”).
      #
      #   @return [String]
      required :name, String

      # @!attribute ref
      #   A unique, stable, machine-readable identifier for the collection. This reference
      #   is used in API requests and does not change even if the `name` is updated.
      #
      #   @return [String]
      required :ref, String

      # @!attribute type
      #   String representing the object’s type. Always `collection` for this object.
      #
      #   @return [Symbol, :collection]
      required :type, const: :collection

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute description
      #   An optional, longer-form description of the collection's purpose.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute fields
      #   A list of `Field` objects that define the schema for items in this collection.
      #
      #   @return [Array<Moonbase::Models::Field>, nil]
      optional :fields, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Field] }

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!attribute views
      #   A list of saved `View` objects for presenting the collection's data.
      #
      #   @return [Array<Moonbase::Models::View>, nil]
      optional :views, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::View] }

      # @!method initialize(id:, links:, name:, ref:, created_at: nil, description: nil, fields: nil, updated_at: nil, views: nil, type: :collection)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::Collection} for more details.
      #
      #   A Collection is a container for structured data, similar to a database table or
      #   spreadsheet. It defines a schema using a set of `Fields` and holds the data as a
      #   list of `Items`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param links [Moonbase::Models::Collection::Links] A hash of related links.
      #
      #   @param name [String] The user-facing name of the collection (e.g., “Organizations”).
      #
      #   @param ref [String] A unique, stable, machine-readable identifier for the collection. This reference
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param description [String] An optional, longer-form description of the collection's purpose.
      #
      #   @param fields [Array<Moonbase::Models::Field>] A list of `Field` objects that define the schema for items in this collection.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param views [Array<Moonbase::Models::View>] A list of saved `View` objects for presenting the collection's data.
      #
      #   @param type [Symbol, :collection] String representing the object’s type. Always `collection` for this object.

      # @see Moonbase::Models::Collection#links
      class Links < Moonbase::Internal::Type::BaseModel
        # @!attribute self_
        #   The canonical URL for this object.
        #
        #   @return [String]
        required :self_, String, api_name: :self

        # @!method initialize(self_:)
        #   A hash of related links.
        #
        #   @param self_ [String] The canonical URL for this object.
      end
    end
  end
end
