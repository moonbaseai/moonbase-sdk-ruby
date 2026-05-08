# frozen_string_literal: true

module Moonbase
  module Resources
    # Manage your meetings, files, and notes
    class Tagsets
      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::TagsetCreateParams} for more details.
      #
      # Create a new tagset.
      #
      # @overload create(name:, description: nil, tags: nil, request_options: {})
      #
      # @param name [String] The name of the tagset.
      #
      # @param description [String] An optional description of the tagset's purpose.
      #
      # @param tags [Array<Moonbase::Models::TagsetCreateParams::Tag>] Optional list of tags to create with this tagset. Tags are ordered by their posi
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Tagset]
      #
      # @see Moonbase::Models::TagsetCreateParams
      def create(params)
        parsed, options = Moonbase::TagsetCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "tagsets",
          body: parsed,
          model: Moonbase::Tagset,
          options: options
        )
      end

      # Retrieves the details of an existing tagset.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the tagset to retrieve.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Tagset]
      #
      # @see Moonbase::Models::TagsetRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["tagsets/%1$s", id],
          model: Moonbase::Tagset,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::TagsetUpdateParams} for more details.
      #
      # Updates an existing tagset.
      #
      # @overload update(id, description: nil, name: nil, tags: nil, request_options: {})
      #
      # @param id [String] The ID of the tagset to update.
      #
      # @param description [String] An updated description of the tagset.
      #
      # @param name [String] The new name of the tagset.
      #
      # @param tags [Array<Moonbase::Models::TagsetUpdateParams::Tag>] Optional full list of tags for this tagset. If provided, tags are ordered by arr
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Tagset]
      #
      # @see Moonbase::Models::TagsetUpdateParams
      def update(id, params = {})
        parsed, options = Moonbase::TagsetUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["tagsets/%1$s", id],
          body: parsed,
          model: Moonbase::Tagset,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::TagsetListParams} for more details.
      #
      # Returns a list of your tagsets.
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
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Tagset>]
      #
      # @see Moonbase::Models::TagsetListParams
      def list(params = {})
        parsed, options = Moonbase::TagsetListParams.dump_request(params)
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "tagsets",
          query: query,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Tagset,
          options: options
        )
      end

      # Permanently deletes a tagset.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the tagset to delete.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Moonbase::Models::TagsetDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["tagsets/%1$s", id],
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
