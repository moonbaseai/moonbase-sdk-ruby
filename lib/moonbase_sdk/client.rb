# frozen_string_literal: true

module MoonbaseSDK
  class Client < MoonbaseSDK::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # Your Moonbase API key.
    # @return [String]
    attr_reader :api_key

    # @return [MoonbaseSDK::Resources::Calls]
    attr_reader :calls

    # @return [MoonbaseSDK::Resources::Collections]
    attr_reader :collections

    # @return [MoonbaseSDK::Resources::Files]
    attr_reader :files

    # @return [MoonbaseSDK::Resources::Items]
    attr_reader :items

    # @return [MoonbaseSDK::Resources::ProgramMessages]
    attr_reader :program_messages

    # @return [MoonbaseSDK::Resources::ProgramTemplates]
    attr_reader :program_templates

    # @return [MoonbaseSDK::Resources::Programs]
    attr_reader :programs

    # @return [MoonbaseSDK::Resources::Tagsets]
    attr_reader :tagsets

    # @return [MoonbaseSDK::Resources::Views]
    attr_reader :views

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Your Moonbase API key. Defaults to `ENV["MOONBASE_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["MOONBASE_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["MOONBASE_API_KEY"],
      base_url: ENV["MOONBASE_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.moonbase.ai/v0"

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"MOONBASE_API_KEY\"")
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @calls = MoonbaseSDK::Resources::Calls.new(client: self)
      @collections = MoonbaseSDK::Resources::Collections.new(client: self)
      @files = MoonbaseSDK::Resources::Files.new(client: self)
      @items = MoonbaseSDK::Resources::Items.new(client: self)
      @program_messages = MoonbaseSDK::Resources::ProgramMessages.new(client: self)
      @program_templates = MoonbaseSDK::Resources::ProgramTemplates.new(client: self)
      @programs = MoonbaseSDK::Resources::Programs.new(client: self)
      @tagsets = MoonbaseSDK::Resources::Tagsets.new(client: self)
      @views = MoonbaseSDK::Resources::Views.new(client: self)
    end
  end
end
