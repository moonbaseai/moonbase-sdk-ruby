# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::ProgramMessages#send_
    class ProgramMessage < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Time at which the message was created and enqueued for sending, as an ISO 8601
      #   timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute program_template
      #   The `ProgramTemplate` used to generate this message.
      #
      #   @return [Moonbase::Models::ProgramTemplate]
      required :program_template, -> { Moonbase::ProgramTemplate }

      # @!attribute type
      #   String representing the object’s type. Always `program_message` for this object.
      #
      #   @return [Symbol, :program_message]
      required :type, const: :program_message

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, created_at:, program_template:, updated_at:, type: :program_message)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ProgramMessage} for more details.
      #
      #   Represents a single message sent as part of a `Program`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param created_at [Time] Time at which the message was created and enqueued for sending, as an ISO 8601 t
      #
      #   @param program_template [Moonbase::Models::ProgramTemplate] The `ProgramTemplate` used to generate this message.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param type [Symbol, :program_message] String representing the object’s type. Always `program_message` for this object.
    end
  end
end
