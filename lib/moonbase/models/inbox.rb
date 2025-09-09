# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Inboxes#retrieve
    class Inbox < Moonbase::Internal::Type::BaseModel
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
      #   The display name of the inbox.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   String representing the object’s type. Always `inbox` for this object.
      #
      #   @return [Symbol, :inbox]
      required :type, const: :inbox

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute tagset
      #   The `Tagset` associated with this inbox, which defines the tags available for
      #   its conversations.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Moonbase::Models::Tagset, nil]
      optional :tagset, -> { Moonbase::Tagset }

      # @!method initialize(id:, created_at:, name:, updated_at:, tagset: nil, type: :inbox)
      #   Some parameter documentations has been truncated, see {Moonbase::Models::Inbox}
      #   for more details.
      #
      #   The Inbox object represents a shared inbox for receiving and sending messages.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param name [String] The display name of the inbox.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param tagset [Moonbase::Models::Tagset] The `Tagset` associated with this inbox, which defines the tags available for it
      #
      #   @param type [Symbol, :inbox] String representing the object’s type. Always `inbox` for this object.
    end
  end
end
