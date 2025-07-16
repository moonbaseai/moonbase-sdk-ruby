# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class ProgramMessages
      # Sends a message using a program template.
      #
      # @overload create(person:, program_template_id:, custom_variables: nil, request_options: {})
      #
      # @param person [MoonbaseSDK::Models::ProgramMessageCreateParams::Person] The person to send the message to.
      #
      # @param program_template_id [String] The ID of the `ProgramTemplate` to use for sending the message.
      #
      # @param custom_variables [Hash{Symbol=>Object}] Any custom Liquid variables to be interpolated into the message template.
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::ProgramMessageCreateResponse]
      #
      # @see MoonbaseSDK::Models::ProgramMessageCreateParams
      def create(params)
        parsed, options = MoonbaseSDK::ProgramMessageCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "program_messages",
          body: parsed,
          model: MoonbaseSDK::Models::ProgramMessageCreateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [MoonbaseSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
