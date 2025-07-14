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
      #   @return [String]
      required :body, String

      # @!attribute links
      #
      #   @return [Moonbase::Models::ProgramTemplate::Links]
      required :links, -> { Moonbase::ProgramTemplate::Links }

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

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute program
      #   The `Program` that uses this template.
      #
      #   @return [Moonbase::Models::Program, nil]
      optional :program, -> { Moonbase::Program }

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, body:, links:, subject:, created_at: nil, program: nil, updated_at: nil, type: :program_template)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ProgramTemplate} for more details.
      #
      #   The ProgramTemplate object defines the content of a message sent by a `Program`,
      #   including support for Liquid templating.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param body [String] The body content of the email, which can include Liquid variables.
      #
      #   @param links [Moonbase::Models::ProgramTemplate::Links]
      #
      #   @param subject [String] The subject line of the email, which can include Liquid variables.
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param program [Moonbase::Models::Program] The `Program` that uses this template.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :program_template] String representing the object’s type. Always `program_template` for this object

      # @see Moonbase::Models::ProgramTemplate#links
      class Links < Moonbase::Internal::Type::BaseModel
        # @!attribute self_
        #   The canonical URL for this object.
        #
        #   @return [String]
        required :self_, String, api_name: :self

        # @!attribute program
        #   A link to the `Program` using this template.
        #
        #   @return [String, nil]
        optional :program, String

        # @!method initialize(self_:, program: nil)
        #   @param self_ [String] The canonical URL for this object.
        #
        #   @param program [String] A link to the `Program` using this template.
      end
    end
  end
end
