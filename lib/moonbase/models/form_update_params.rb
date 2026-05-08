# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Forms#update
    class FormUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute business_email_required
      #   If `true`, submissions require a business email address.
      #
      #   @return [Boolean, nil]
      optional :business_email_required, Moonbase::Internal::Type::Boolean

      # @!attribute name
      #   The new name for the form.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute pages_enabled
      #   If `true`, a Moonbase Pages hosted page is enabled for this form, providing a
      #   standalone public URL for sharing.
      #
      #   @return [Boolean, nil]
      optional :pages_enabled, Moonbase::Internal::Type::Boolean

      # @!attribute redirect_url
      #   Updated redirect URL, or `null` to clear. Omit to leave the existing value
      #   unchanged. Liquid template rendered at submission time with form field values
      #   under `submission.<key>` (keyed by the field's `key`) plus UTM params
      #   (`utm_source`, `utm_medium`, `utm_campaign`, `utm_term`, `utm_content`)
      #   automatically appended. Use the `uri_encode` filter for URL-safe values. The
      #   rendered URL must parse as a valid URL or the submission errors.
      #
      #   @return [String, nil]
      optional :redirect_url, String, nil?: true

      # @!method initialize(id:, business_email_required: nil, name: nil, pages_enabled: nil, redirect_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::FormUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param business_email_required [Boolean] If `true`, submissions require a business email address.
      #
      #   @param name [String] The new name for the form.
      #
      #   @param pages_enabled [Boolean] If `true`, a Moonbase Pages hosted page is enabled for this form, providing a st
      #
      #   @param redirect_url [String, nil] Updated redirect URL, or `null` to clear. Omit to leave the existing value uncha
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
