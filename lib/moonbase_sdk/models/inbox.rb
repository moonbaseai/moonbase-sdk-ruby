# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Inboxes#retrieve
    class Inbox < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute links
      #
      #   @return [MoonbaseSDK::Models::Inbox::Links]
      required :links, -> { MoonbaseSDK::Inbox::Links }

      # @!attribute name
      #   The display name of the inbox.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   String representing the object’s type. Always `inbox` for this object.
      #
      #   @return [Symbol, :inbox]
      required :type, const: :inbox

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute tagset
      #   The `Tagset` associated with this inbox, which defines the tags available for
      #   its conversations.
      #
      #   @return [MoonbaseSDK::Models::Tagset, nil]
      optional :tagset, -> { MoonbaseSDK::Tagset }

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, links:, name:, created_at: nil, tagset: nil, updated_at: nil, type: :inbox)
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::Inbox} for more details.
      #
      #   The Inbox object represents a shared inbox for receiving and sending messages.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param links [MoonbaseSDK::Models::Inbox::Links]
      #
      #   @param name [String] The display name of the inbox.
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param tagset [MoonbaseSDK::Models::Tagset] The `Tagset` associated with this inbox, which defines the tags available for it
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :inbox] String representing the object’s type. Always `inbox` for this object.

      # @see MoonbaseSDK::Models::Inbox#links
      class Links < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute self_
        #   The canonical URL for this object.
        #
        #   @return [String]
        required :self_, String, api_name: :self

        # @!attribute tagset
        #   A link to the `Tagset` for this inbox.
        #
        #   @return [String, nil]
        optional :tagset, String

        # @!method initialize(self_:, tagset: nil)
        #   @param self_ [String] The canonical URL for this object.
        #
        #   @param tagset [String] A link to the `Tagset` for this inbox.
      end
    end
  end
end
