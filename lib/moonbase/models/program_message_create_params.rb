# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::ProgramMessages#create
    class ProgramMessageCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute person
      #   The person to send the message to.
      #
      #   @return [Moonbase::Models::ProgramMessageCreateParams::Person]
      required :person, -> { Moonbase::ProgramMessageCreateParams::Person }

      # @!attribute program_template_id
      #   The ID of the `ProgramTemplate` to use for sending the message.
      #
      #   @return [String]
      required :program_template_id, String

      # @!attribute custom_variables
      #   Any custom Liquid variables to be interpolated into the message template.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :custom_variables, Moonbase::Internal::Type::HashOf[Moonbase::Internal::Type::Unknown]

      # @!method initialize(person:, program_template_id:, custom_variables: nil, request_options: {})
      #   @param person [Moonbase::Models::ProgramMessageCreateParams::Person] The person to send the message to.
      #
      #   @param program_template_id [String] The ID of the `ProgramTemplate` to use for sending the message.
      #
      #   @param custom_variables [Hash{Symbol=>Object}] Any custom Liquid variables to be interpolated into the message template.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class Person < Moonbase::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!method initialize(email:)
        #   The person to send the message to.
        #
        #   @param email [String]
      end
    end
  end
end
