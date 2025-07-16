# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::ProgramMessages#create
    class ProgramMessageCreateParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!attribute person
      #   The person to send the message to.
      #
      #   @return [MoonbaseSDK::Models::ProgramMessageCreateParams::Person]
      required :person, -> { MoonbaseSDK::ProgramMessageCreateParams::Person }

      # @!attribute program_template_id
      #   The ID of the `ProgramTemplate` to use for sending the message.
      #
      #   @return [String]
      required :program_template_id, String

      # @!attribute custom_variables
      #   Any custom Liquid variables to be interpolated into the message template.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :custom_variables, MoonbaseSDK::Internal::Type::HashOf[MoonbaseSDK::Internal::Type::Unknown]

      # @!method initialize(person:, program_template_id:, custom_variables: nil, request_options: {})
      #   @param person [MoonbaseSDK::Models::ProgramMessageCreateParams::Person] The person to send the message to.
      #
      #   @param program_template_id [String] The ID of the `ProgramTemplate` to use for sending the message.
      #
      #   @param custom_variables [Hash{Symbol=>Object}] Any custom Liquid variables to be interpolated into the message template.
      #
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]

      class Person < MoonbaseSDK::Internal::Type::BaseModel
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
