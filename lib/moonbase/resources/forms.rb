# frozen_string_literal: true

module Moonbase
  module Resources
    # Manage your marketing campaigns and forms
    class Forms
      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::FormCreateParams} for more details.
      #
      # Creates a new form with an auto-generated collection and default fields.
      #
      # @overload create(name:, business_email_required: nil, pages_enabled: nil, redirect_url: nil, request_options: {})
      #
      # @param name [String] The name of the form, used as the title on its public page.
      #
      # @param business_email_required [Boolean] If `true`, submissions require a business email address. Defaults to `false`.
      #
      # @param pages_enabled [Boolean] If `true`, enables a Moonbase Pages hosted page for this form, providing a stand
      #
      # @param redirect_url [String] Optional URL the user is redirected to after a successful submission. Omit to le
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Form]
      #
      # @see Moonbase::Models::FormCreateParams
      def create(params)
        parsed, options = Moonbase::FormCreateParams.dump_request(params)
        @client.request(method: :post, path: "forms", body: parsed, model: Moonbase::Form, options: options)
      end

      # Retrieves the details of an existing form.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the Form to retrieve.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Form]
      #
      # @see Moonbase::Models::FormRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["forms/%1$s", id],
          model: Moonbase::Form,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::FormUpdateParams} for more details.
      #
      # Updates an existing form.
      #
      # @overload update(id, business_email_required: nil, name: nil, pages_enabled: nil, redirect_url: nil, request_options: {})
      #
      # @param id [String] The ID of the Form to update.
      #
      # @param business_email_required [Boolean] If `true`, submissions require a business email address.
      #
      # @param name [String] The new name for the form.
      #
      # @param pages_enabled [Boolean] If `true`, a Moonbase Pages hosted page is enabled for this form, providing a st
      #
      # @param redirect_url [String, nil] Updated redirect URL, or `null` to clear. Omit to leave the existing value uncha
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Form]
      #
      # @see Moonbase::Models::FormUpdateParams
      def update(id, params = {})
        parsed, options = Moonbase::FormUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["forms/%1$s", id],
          body: parsed,
          model: Moonbase::Form,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::FormListParams} for more details.
      #
      # Returns a list of your forms.
      #
      # @overload list(after: nil, before: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
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
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "forms",
          query: query,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Form,
          options: options
        )
      end

      # Permanently deletes a form. The backing collection is preserved.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the Form to delete.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Moonbase::Models::FormDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["forms/%1$s", id],
          model: NilClass,
          options: params[:request_options]
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
