# typed: strong

module MoonbaseSDK
  module Resources
    class ProgramMessages
      # Sends a message using a program template.
      sig do
        params(
          person: MoonbaseSDK::ProgramMessageSendParams::Person::OrHash,
          program_template_id: String,
          custom_variables: T::Hash[Symbol, T.anything],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::Models::ProgramMessageSendResponse)
      end
      def send_(
        # The person to send the message to.
        person:,
        # The ID of the `ProgramTemplate` to use for sending the message.
        program_template_id:,
        # Any custom Liquid variables to be interpolated into the message template.
        custom_variables: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: MoonbaseSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
