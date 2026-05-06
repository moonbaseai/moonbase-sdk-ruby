# typed: strong

module Moonbase
  module Models
    class FormUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::FormUpdateParams, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # If `true`, submissions require a business email address.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :business_email_required

      sig { params(business_email_required: T::Boolean).void }
      attr_writer :business_email_required

      # The new name for the form.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # If `true`, a Moonbase Pages hosted page is enabled for this form, providing a
      # standalone public URL for sharing.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :pages_enabled

      sig { params(pages_enabled: T::Boolean).void }
      attr_writer :pages_enabled

      # Updated redirect URL, or `null` to clear. Omit to leave the existing value
      # unchanged. Liquid template rendered at submission time with form field values
      # under `submission.<key>` (keyed by the field's `key`) plus UTM params
      # (`utm_source`, `utm_medium`, `utm_campaign`, `utm_term`, `utm_content`)
      # automatically appended. Use the `uri_encode` filter for URL-safe values. The
      # rendered URL must parse as a valid URL or the submission errors.
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_url

      sig do
        params(
          id: String,
          business_email_required: T::Boolean,
          name: String,
          pages_enabled: T::Boolean,
          redirect_url: T.nilable(String),
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # If `true`, submissions require a business email address.
        business_email_required: nil,
        # The new name for the form.
        name: nil,
        # If `true`, a Moonbase Pages hosted page is enabled for this form, providing a
        # standalone public URL for sharing.
        pages_enabled: nil,
        # Updated redirect URL, or `null` to clear. Omit to leave the existing value
        # unchanged. Liquid template rendered at submission time with form field values
        # under `submission.<key>` (keyed by the field's `key`) plus UTM params
        # (`utm_source`, `utm_medium`, `utm_campaign`, `utm_term`, `utm_content`)
        # automatically appended. Use the `uri_encode` filter for URL-safe values. The
        # rendered URL must parse as a valid URL or the submission errors.
        redirect_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_email_required: T::Boolean,
            name: String,
            pages_enabled: T::Boolean,
            redirect_url: T.nilable(String),
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
