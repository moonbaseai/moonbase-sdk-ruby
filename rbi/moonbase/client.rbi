# typed: strong

module Moonbase
  class Client < Moonbase::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # Your Moonbase API key.
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Moonbase::Resources::Funnels) }
    attr_reader :funnels

    sig { returns(Moonbase::Resources::Collections) }
    attr_reader :collections

    sig { returns(Moonbase::Resources::Items) }
    attr_reader :items

    sig { returns(Moonbase::Resources::Views) }
    attr_reader :views

    sig { returns(Moonbase::Resources::Inboxes) }
    attr_reader :inboxes

    sig { returns(Moonbase::Resources::InboxConversations) }
    attr_reader :inbox_conversations

    sig { returns(Moonbase::Resources::InboxMessages) }
    attr_reader :inbox_messages

    sig { returns(Moonbase::Resources::Tagsets) }
    attr_reader :tagsets

    sig { returns(Moonbase::Resources::Programs) }
    attr_reader :programs

    sig { returns(Moonbase::Resources::ProgramTemplates) }
    attr_reader :program_templates

    sig { returns(Moonbase::Resources::ProgramMessages) }
    attr_reader :program_messages

    sig { returns(Moonbase::Resources::Forms) }
    attr_reader :forms

    sig { returns(Moonbase::Resources::Activities) }
    attr_reader :activities

    sig { returns(Moonbase::Resources::Calls) }
    attr_reader :calls

    sig { returns(Moonbase::Resources::Files) }
    attr_reader :files

    sig { returns(Moonbase::Resources::Meetings) }
    attr_reader :meetings

    sig { returns(Moonbase::Resources::Notes) }
    attr_reader :notes

    sig { returns(Moonbase::Resources::WebhookEndpoints) }
    attr_reader :webhook_endpoints

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Your Moonbase API key. Defaults to `ENV["MOONBASE_API_KEY"]`
      api_key: ENV["MOONBASE_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["MOONBASE_BASE_URL"]`
      base_url: ENV["MOONBASE_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Moonbase::Client::DEFAULT_MAX_RETRIES,
      timeout: Moonbase::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Moonbase::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Moonbase::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
