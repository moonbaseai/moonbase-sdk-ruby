# frozen_string_literal: true

module Moonbase
  module Resources
    class ProgramMessages
      # Sends a message using a program template.
      #
      # @overload send_(person:, program_template_id:, custom_variables: nil, request_options: {})
      #
      # @param person [Moonbase::Models::ProgramMessageSendParams::Person] The person to send the message to.
      #
      # @param program_template_id [String] The ID of the `ProgramTemplate` to use for sending the message.
      #
      # @param custom_variables [Hash{Symbol=>Object}] Any custom Liquid variables to be interpolated into the message template.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::ProgramMessage]
      #
      # @see Moonbase::Models::ProgramMessageSendParams
      def send_(params)
        parsed, options = Moonbase::ProgramMessageSendParams.dump_request(params)
        @client.request(
          method: :post,
          path: "program_messages",
          body: parsed,
          model: Moonbase::ProgramMessage,
          options: options
        )
      end

      # @api private
      #
      # @param client [Moonbase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
