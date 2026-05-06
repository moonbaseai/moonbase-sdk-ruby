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

      # @!attribute tagsets
      #   A list of `TagsetPointer` objects referring to the Tagsets associated with this
      #   inbox, which defines the tags available for its conversations.
      #
      #   @return [Array<Moonbase::Models::TagsetPointer>]
      required :tagsets, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::TagsetPointer] }

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

      # @!attribute can_read
      #
      #   @return [Boolean, nil]
      optional :can_read, Moonbase::Internal::Type::Boolean

      # @!method initialize(id:, created_at:, name:, tagsets:, updated_at:, can_read: nil, type: :inbox)
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
      #   @param tagsets [Array<Moonbase::Models::TagsetPointer>] A list of `TagsetPointer` objects referring to the Tagsets associated with this
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param can_read [Boolean]
      #
      #   @param type [Symbol, :inbox] String representing the object’s type. Always `inbox` for this object.
    end
  end
end
