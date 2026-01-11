# frozen_string_literal: true

module Moonbase
  class Client < Moonbase::Internal::Transport::BaseClient
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

    # @return [Moonbase::Resources::Funnels]
    attr_reader :funnels

    # @return [Moonbase::Resources::Collections]
    attr_reader :collections

    # @return [Moonbase::Resources::Items]
    attr_reader :items

    # @return [Moonbase::Resources::Views]
    attr_reader :views

    # @return [Moonbase::Resources::Inboxes]
    attr_reader :inboxes

    # @return [Moonbase::Resources::InboxConversations]
    attr_reader :inbox_conversations

    # @return [Moonbase::Resources::InboxMessages]
    attr_reader :inbox_messages

    # @return [Moonbase::Resources::Tagsets]
    attr_reader :tagsets

    # @return [Moonbase::Resources::Programs]
    attr_reader :programs

    # @return [Moonbase::Resources::ProgramTemplates]
    attr_reader :program_templates

    # @return [Moonbase::Resources::ProgramMessages]
    attr_reader :program_messages

    # @return [Moonbase::Resources::Forms]
    attr_reader :forms

    # @return [Moonbase::Resources::Activities]
    attr_reader :activities

    # @return [Moonbase::Resources::Calls]
    attr_reader :calls

    # @return [Moonbase::Resources::Files]
    attr_reader :files

    # @return [Moonbase::Resources::Meetings]
    attr_reader :meetings

    # @return [Moonbase::Resources::Notes]
    attr_reader :notes

    # @return [Moonbase::Resources::WebhookEndpoints]
    attr_reader :webhook_endpoints

    # @return [Moonbase::Resources::AgentSettings]
    attr_reader :agent_settings

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

      @funnels = Moonbase::Resources::Funnels.new(client: self)
      @collections = Moonbase::Resources::Collections.new(client: self)
      @items = Moonbase::Resources::Items.new(client: self)
      @views = Moonbase::Resources::Views.new(client: self)
      @inboxes = Moonbase::Resources::Inboxes.new(client: self)
      @inbox_conversations = Moonbase::Resources::InboxConversations.new(client: self)
      @inbox_messages = Moonbase::Resources::InboxMessages.new(client: self)
      @tagsets = Moonbase::Resources::Tagsets.new(client: self)
      @programs = Moonbase::Resources::Programs.new(client: self)
      @program_templates = Moonbase::Resources::ProgramTemplates.new(client: self)
      @program_messages = Moonbase::Resources::ProgramMessages.new(client: self)
      @forms = Moonbase::Resources::Forms.new(client: self)
      @activities = Moonbase::Resources::Activities.new(client: self)
      @calls = Moonbase::Resources::Calls.new(client: self)
      @files = Moonbase::Resources::Files.new(client: self)
      @meetings = Moonbase::Resources::Meetings.new(client: self)
      @notes = Moonbase::Resources::Notes.new(client: self)
      @webhook_endpoints = Moonbase::Resources::WebhookEndpoints.new(client: self)
      @agent_settings = Moonbase::Resources::AgentSettings.new(client: self)
    end
  end
end
