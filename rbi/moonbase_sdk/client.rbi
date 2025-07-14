# typed: strong

module MoonbaseSDK
  class Client < MoonbaseSDK::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # Your Moonbase API key.
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(MoonbaseSDK::Resources::ProgramMessages) }
    attr_reader :program_messages

    sig { returns(MoonbaseSDK::Resources::ProgramTemplates) }
    attr_reader :program_templates

    sig { returns(MoonbaseSDK::Resources::Programs) }
    attr_reader :programs

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
      max_retries: MoonbaseSDK::Client::DEFAULT_MAX_RETRIES,
      timeout: MoonbaseSDK::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: MoonbaseSDK::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: MoonbaseSDK::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
