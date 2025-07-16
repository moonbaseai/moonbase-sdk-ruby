# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class ProgramTemplates
      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::ProgramTemplateRetrieveParams} for more details.
      #
      # Retrieves the details of an existing program template.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the program template to retrieve.
      #
      # @param include [Array<Symbol, MoonbaseSDK::Models::ProgramTemplateRetrieveParams::Include>] Specifies which related objects to include in the response. Valid option is `pro
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::ProgramTemplate]
      #
      # @see MoonbaseSDK::Models::ProgramTemplateRetrieveParams
      def retrieve(id, params = {})
        parsed, options = MoonbaseSDK::ProgramTemplateRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["program_templates/%1$s", id],
          query: parsed,
          model: MoonbaseSDK::ProgramTemplate,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::ProgramTemplateListParams} for more details.
      #
      # Returns a list of your program templates.
      #
      # @overload list(after: nil, before: nil, include: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param include [Array<Symbol, MoonbaseSDK::Models::ProgramTemplateListParams::Include>] Specifies which related objects to include in the response. Valid option is `pro
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Internal::CursorPage<MoonbaseSDK::Models::ProgramTemplate>]
      #
      # @see MoonbaseSDK::Models::ProgramTemplateListParams
      def list(params = {})
        parsed, options = MoonbaseSDK::ProgramTemplateListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "program_templates",
          query: parsed,
          page: MoonbaseSDK::Internal::CursorPage,
          model: MoonbaseSDK::ProgramTemplate,
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
