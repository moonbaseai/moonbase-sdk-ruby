# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::ProgramMessages#create
    class ProgramMessageCreateResponse < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Time at which the message was created and enqueued for sending, as an RFC 3339
      #   timestamp.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute links
      #
      #   @return [MoonbaseSDK::Models::ProgramMessageCreateResponse::Links]
      required :links, -> { MoonbaseSDK::Models::ProgramMessageCreateResponse::Links }

      # @!attribute program_template
      #   The `ProgramTemplate` used to generate this message.
      #
      #   @return [MoonbaseSDK::Models::ProgramTemplate]
      required :program_template, -> { MoonbaseSDK::ProgramTemplate }

      # @!attribute type
      #   String representing the object’s type. Always `program_message` for this object.
      #
      #   @return [Symbol, :program_message]
      required :type, const: :program_message

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, created_at:, links:, program_template:, updated_at:, type: :program_message)
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::ProgramMessageCreateResponse} for more details.
      #
      #   Represents a single message sent as part of a `Program`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param created_at [Time] Time at which the message was created and enqueued for sending, as an RFC 3339 t
      #
      #   @param links [MoonbaseSDK::Models::ProgramMessageCreateResponse::Links]
      #
      #   @param program_template [MoonbaseSDK::Models::ProgramTemplate] The `ProgramTemplate` used to generate this message.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :program_message] String representing the object’s type. Always `program_message` for this object.

      # @see MoonbaseSDK::Models::ProgramMessageCreateResponse#links
      class Links < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute program_template
        #   A link to the `ProgramTemplate` used.
        #
        #   @return [String]
        required :program_template, String

        # @!method initialize(program_template:)
        #   @param program_template [String] A link to the `ProgramTemplate` used.
      end
    end
  end
end
