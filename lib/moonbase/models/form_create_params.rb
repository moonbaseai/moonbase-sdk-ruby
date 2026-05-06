# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Forms#create
    class FormCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute name
      #   The name of the form, used as the title on its public page.
      #
      #   @return [String]
      required :name, String

      # @!attribute business_email_required
      #   If `true`, submissions require a business email address. Defaults to `false`.
      #
      #   @return [Boolean, nil]
      optional :business_email_required, Moonbase::Internal::Type::Boolean

      # @!attribute pages_enabled
      #   If `true`, enables a Moonbase Pages hosted page for this form, providing a
      #   standalone public URL for sharing. Defaults to `false`.
      #
      #   @return [Boolean, nil]
      optional :pages_enabled, Moonbase::Internal::Type::Boolean

      # @!attribute redirect_url
      #   Optional URL the user is redirected to after a successful submission. Omit to
      #   leave submissions without a redirect. Stored as a Liquid template; rendered at
      #   submission time with form field values under `submission.<key>` (keyed by the
      #   field's `key`) plus UTM params (`utm_source`, `utm_medium`, `utm_campaign`,
      #   `utm_term`, `utm_content`) automatically appended. Use the `uri_encode` filter
      #   for URL-safe values, e.g.
      #   `https://example.com/thanks?email={{ submission.email | uri_encode }}`. The
      #   rendered URL must parse as a valid URL or the submission errors.
      #
      #   @return [String, nil]
      optional :redirect_url, String

      # @!method initialize(name:, business_email_required: nil, pages_enabled: nil, redirect_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::FormCreateParams} for more details.
      #
      #   @param name [String] The name of the form, used as the title on its public page.
      #
      #   @param business_email_required [Boolean] If `true`, submissions require a business email address. Defaults to `false`.
      #
      #   @param pages_enabled [Boolean] If `true`, enables a Moonbase Pages hosted page for this form, providing a stand
      #
      #   @param redirect_url [String] Optional URL the user is redirected to after a successful submission. Omit to le
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
