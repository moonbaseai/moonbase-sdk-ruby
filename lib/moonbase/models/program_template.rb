# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::ProgramTemplates#retrieve
    class ProgramTemplate < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute body
      #   The body content of the email, which can include Liquid variables.
      #
      #   @return [Moonbase::Models::FormattedText]
      required :body, -> { Moonbase::FormattedText }

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute subject
      #   The subject line of the email, which can include Liquid variables.
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #   String representing the object’s type. Always `program_template` for this
      #   object.
      #
      #   @return [Symbol, :program_template]
      required :type, const: :program_template

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute program
      #   The `Program` that uses this template.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Moonbase::Models::Program, nil]
      optional :program, -> { Moonbase::Program }

      # @!method initialize(id:, body:, created_at:, subject:, updated_at:, program: nil, type: :program_template)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ProgramTemplate} for more details.
      #
      #   The ProgramTemplate object defines the content of a message sent by a `Program`,
      #   including support for Liquid templating.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param body [Moonbase::Models::FormattedText] The body content of the email, which can include Liquid variables.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param subject [String] The subject line of the email, which can include Liquid variables.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param program [Moonbase::Models::Program] The `Program` that uses this template.
      #
      #   @param type [Symbol, :program_template] String representing the object’s type. Always `program_template` for this object
    end
  end
end
