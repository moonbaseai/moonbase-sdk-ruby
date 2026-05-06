# typed: strong

module Moonbase
  module Models
    class FormCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::FormCreateParams, Moonbase::Internal::AnyHash)
        end

      # The name of the form, used as the title on its public page.
      sig { returns(String) }
      attr_accessor :name

      # If `true`, submissions require a business email address. Defaults to `false`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :business_email_required

      sig { params(business_email_required: T::Boolean).void }
      attr_writer :business_email_required

      # If `true`, enables a Moonbase Pages hosted page for this form, providing a
      # standalone public URL for sharing. Defaults to `false`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :pages_enabled

      sig { params(pages_enabled: T::Boolean).void }
      attr_writer :pages_enabled

      # Optional URL the user is redirected to after a successful submission. Omit to
      # leave submissions without a redirect. Stored as a Liquid template; rendered at
      # submission time with form field values under `submission.<key>` (keyed by the
      # field's `key`) plus UTM params (`utm_source`, `utm_medium`, `utm_campaign`,
      # `utm_term`, `utm_content`) automatically appended. Use the `uri_encode` filter
      # for URL-safe values, e.g.
      # `https://example.com/thanks?email={{ submission.email | uri_encode }}`. The
      # rendered URL must parse as a valid URL or the submission errors.
      sig { returns(T.nilable(String)) }
      attr_reader :redirect_url

      sig { params(redirect_url: String).void }
      attr_writer :redirect_url

      sig do
        params(
          name: String,
          business_email_required: T::Boolean,
          pages_enabled: T::Boolean,
          redirect_url: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the form, used as the title on its public page.
        name:,
        # If `true`, submissions require a business email address. Defaults to `false`.
        business_email_required: nil,
        # If `true`, enables a Moonbase Pages hosted page for this form, providing a
        # standalone public URL for sharing. Defaults to `false`.
        pages_enabled: nil,
        # Optional URL the user is redirected to after a successful submission. Omit to
        # leave submissions without a redirect. Stored as a Liquid template; rendered at
        # submission time with form field values under `submission.<key>` (keyed by the
        # field's `key`) plus UTM params (`utm_source`, `utm_medium`, `utm_campaign`,
        # `utm_term`, `utm_content`) automatically appended. Use the `uri_encode` filter
        # for URL-safe values, e.g.
        # `https://example.com/thanks?email={{ submission.email | uri_encode }}`. The
        # rendered URL must parse as a valid URL or the submission errors.
        redirect_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            business_email_required: T::Boolean,
            pages_enabled: T::Boolean,
            redirect_url: String,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
