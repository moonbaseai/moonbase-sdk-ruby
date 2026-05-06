# typed: strong

module Moonbase
  module Models
    class Form < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Form, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # `true` if submissions require a business email address, blocking free and
      # disposable providers.
      sig { returns(T::Boolean) }
      attr_accessor :business_email_required

      # The `Collection` that submissions to this form are saved to.
      sig { returns(Moonbase::Collection) }
      attr_reader :collection

      sig { params(collection: Moonbase::Collection::OrHash).void }
      attr_writer :collection

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The name of the form, used as the title on its public page.
      sig { returns(String) }
      attr_accessor :name

      # If `true`, a Moonbase Pages hosted page is enabled for this form, providing a
      # standalone public URL for sharing.
      sig { returns(T::Boolean) }
      attr_accessor :pages_enabled

      # String representing the object’s type. Always `form` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The public URL for the form, if `pages_enabled` is `true`.
      sig { returns(T.nilable(String)) }
      attr_reader :pages_url

      sig { params(pages_url: String).void }
      attr_writer :pages_url

      # Optional URL the user is redirected to after a successful submission. When
      # unset, no redirect occurs. Stored as a Liquid template; rendered at submission
      # time with form field values under `submission.<key>` (keyed by the field's
      # `key`) plus UTM params (`utm_source`, `utm_medium`, `utm_campaign`, `utm_term`,
      # `utm_content`) automatically appended. Use the `uri_encode` filter for URL-safe
      # values, e.g.
      # `https://example.com/thanks?email={{ submission.email | uri_encode }}`. The
      # rendered URL must parse as a valid URL or the submission errors.
      sig { returns(T.nilable(String)) }
      attr_reader :redirect_url

      sig { params(redirect_url: String).void }
      attr_writer :redirect_url

      # A Form provides a way to create `Items` in a `Collection`, often via a public
      # URL for external users. Each form submission creates a new item.
      sig do
        params(
          id: String,
          business_email_required: T::Boolean,
          collection: Moonbase::Collection::OrHash,
          created_at: Time,
          name: String,
          pages_enabled: T::Boolean,
          updated_at: Time,
          pages_url: String,
          redirect_url: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # `true` if submissions require a business email address, blocking free and
        # disposable providers.
        business_email_required:,
        # The `Collection` that submissions to this form are saved to.
        collection:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # The name of the form, used as the title on its public page.
        name:,
        # If `true`, a Moonbase Pages hosted page is enabled for this form, providing a
        # standalone public URL for sharing.
        pages_enabled:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # The public URL for the form, if `pages_enabled` is `true`.
        pages_url: nil,
        # Optional URL the user is redirected to after a successful submission. When
        # unset, no redirect occurs. Stored as a Liquid template; rendered at submission
        # time with form field values under `submission.<key>` (keyed by the field's
        # `key`) plus UTM params (`utm_source`, `utm_medium`, `utm_campaign`, `utm_term`,
        # `utm_content`) automatically appended. Use the `uri_encode` filter for URL-safe
        # values, e.g.
        # `https://example.com/thanks?email={{ submission.email | uri_encode }}`. The
        # rendered URL must parse as a valid URL or the submission errors.
        redirect_url: nil,
        # String representing the object’s type. Always `form` for this object.
        type: :form
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_email_required: T::Boolean,
            collection: Moonbase::Collection,
            created_at: Time,
            name: String,
            pages_enabled: T::Boolean,
            type: Symbol,
            updated_at: Time,
            pages_url: String,
            redirect_url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
