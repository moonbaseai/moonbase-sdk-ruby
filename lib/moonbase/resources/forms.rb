# frozen_string_literal: true

module Moonbase
  module Resources
    class Forms
      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::FormRetrieveParams} for more details.
      #
      # Retrieves the details of an existing form.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the Form to retrieve.
      #
      # @param include [Array<Symbol, Moonbase::Models::FormRetrieveParams::Include>] Specifies which related objects to include in the response. Valid option is `col
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Form]
      #
      # @see Moonbase::Models::FormRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Moonbase::FormRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["forms/%1$s", id],
          query: parsed,
          model: Moonbase::Form,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::FormListParams} for more details.
      #
      # Returns a list of your forms.
      #
      # @overload list(after: nil, before: nil, include: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param include [Array<Symbol, Moonbase::Models::FormListParams::Include>] Specifies which related objects to include in the response. Valid option is `col
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Form>]
      #
      # @see Moonbase::Models::FormListParams
      def list(params = {})
        parsed, options = Moonbase::FormListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "forms",
          query: parsed,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Form,
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
