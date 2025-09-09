# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Tagsets#retrieve
    class Tagset < Moonbase::Internal::Type::BaseModel
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

      # @!attribute name
      #   The name of the tagset.
      #
      #   @return [String]
      required :name, String

      # @!attribute tags
      #   A list of `Tag` objects belonging to this tagset.
      #
      #   @return [Array<Moonbase::Models::Tagset::Tag>]
      required :tags, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Tagset::Tag] }

      # @!attribute type
      #   String representing the object’s type. Always `tagset` for this object.
      #
      #   @return [Symbol, :tagset]
      required :type, const: :tagset

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #   An optional description of the tagset's purpose.
      #
      #   @return [String, nil]
      optional :description, String

      # @!method initialize(id:, created_at:, name:, tags:, updated_at:, description: nil, type: :tagset)
      #   A Tagset is a collection of `Tag` objects that can be applied within a specific
      #   `Inbox`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param name [String] The name of the tagset.
      #
      #   @param tags [Array<Moonbase::Models::Tagset::Tag>] A list of `Tag` objects belonging to this tagset.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param description [String] An optional description of the tagset's purpose.
      #
      #   @param type [Symbol, :tagset] String representing the object’s type. Always `tagset` for this object.

      class Tag < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the tag.
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #   String representing the object’s type. Always `tag` for this object.
        #
        #   @return [Symbol, :tag]
        required :type, const: :tag

        # @!method initialize(id:, name:, type: :tag)
        #   A Tag is a label that can be applied to `Conversation` objects for organization
        #   and filtering.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param name [String] The name of the tag.
        #
        #   @param type [Symbol, :tag] String representing the object’s type. Always `tag` for this object.
      end
    end
  end
end
