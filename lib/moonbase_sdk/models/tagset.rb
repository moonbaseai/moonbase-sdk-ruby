# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Tagsets#retrieve
    class Tagset < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute links
      #
      #   @return [MoonbaseSDK::Models::Tagset::Links]
      required :links, -> { MoonbaseSDK::Tagset::Links }

      # @!attribute name
      #   The name of the tagset.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   String representing the object’s type. Always `tagset` for this object.
      #
      #   @return [Symbol, :tagset]
      required :type, const: :tagset

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute description
      #   An optional description of the tagset's purpose.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute tags
      #   A list of `Tag` objects belonging to this tagset.
      #
      #   @return [Array<MoonbaseSDK::Models::Tagset::Tag>, nil]
      optional :tags, -> { MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Tagset::Tag] }

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, links:, name:, created_at: nil, description: nil, tags: nil, updated_at: nil, type: :tagset)
      #   A Tagset is a collection of `Tag` objects that can be applied within a specific
      #   `Inbox`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param links [MoonbaseSDK::Models::Tagset::Links]
      #
      #   @param name [String] The name of the tagset.
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param description [String] An optional description of the tagset's purpose.
      #
      #   @param tags [Array<MoonbaseSDK::Models::Tagset::Tag>] A list of `Tag` objects belonging to this tagset.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :tagset] String representing the object’s type. Always `tagset` for this object.

      # @see MoonbaseSDK::Models::Tagset#links
      class Links < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute self_
        #   The canonical URL for this object.
        #
        #   @return [String]
        required :self_, String, api_name: :self

        # @!method initialize(self_:)
        #   @param self_ [String] The canonical URL for this object.
      end

      class Tag < MoonbaseSDK::Internal::Type::BaseModel
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
