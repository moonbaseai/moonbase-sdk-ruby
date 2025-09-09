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

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute fields
      #   A list of `Field` objects that define the schema for items in this collection.
      #
      #   @return [Array<Moonbase::Models::SingleLineTextField, Moonbase::Models::MultiLineTextField, Moonbase::Models::IntegerField, Moonbase::Models::FloatField, Moonbase::Models::MonetaryField, Moonbase::Models::PercentageField, Moonbase::Models::BooleanField, Moonbase::Models::EmailField, Moonbase::Models::URLField, Moonbase::Models::DomainField, Moonbase::Models::SocialXField, Moonbase::Models::SocialLinkedInField, Moonbase::Models::TelephoneNumberField, Moonbase::Models::GeoField, Moonbase::Models::DateField, Moonbase::Models::DatetimeField, Moonbase::Models::ChoiceField, Moonbase::Models::StageField, Moonbase::Models::RelationField>]
      required :fields, -> { Moonbase::Internal::Type::ArrayOf[union: Moonbase::Field] }

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

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #   An optional, longer-form description of the collection's purpose.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute views
      #   A list of saved `View` objects for presenting the collection's data.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Array<Moonbase::Models::View>, nil]
      optional :views, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::View] }

      # @!method initialize(id:, created_at:, fields:, name:, ref:, updated_at:, description: nil, views: nil, type: :collection)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::Collection} for more details.
      #
      #   A Collection is a container for structured data, similar to a database table or
      #   spreadsheet. It defines a schema using a set of `Fields` and holds the data as a
      #   list of `Items`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param fields [Array<Moonbase::Models::SingleLineTextField, Moonbase::Models::MultiLineTextField, Moonbase::Models::IntegerField, Moonbase::Models::FloatField, Moonbase::Models::MonetaryField, Moonbase::Models::PercentageField, Moonbase::Models::BooleanField, Moonbase::Models::EmailField, Moonbase::Models::URLField, Moonbase::Models::DomainField, Moonbase::Models::SocialXField, Moonbase::Models::SocialLinkedInField, Moonbase::Models::TelephoneNumberField, Moonbase::Models::GeoField, Moonbase::Models::DateField, Moonbase::Models::DatetimeField, Moonbase::Models::ChoiceField, Moonbase::Models::StageField, Moonbase::Models::RelationField>] A list of `Field` objects that define the schema for items in this collection.
      #
      #   @param name [String] The user-facing name of the collection (e.g., “Organizations”).
      #
      #   @param ref [String] A unique, stable, machine-readable identifier for the collection. This reference
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param description [String] An optional, longer-form description of the collection's purpose.
      #
      #   @param views [Array<Moonbase::Models::View>] A list of saved `View` objects for presenting the collection's data.
      #
      #   @param type [Symbol, :collection] String representing the object’s type. Always `collection` for this object.
    end
  end
end
