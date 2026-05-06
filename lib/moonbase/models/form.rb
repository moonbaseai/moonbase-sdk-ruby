# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Forms#create
    class Form < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute business_email_required
      #   `true` if submissions require a business email address, blocking free and
      #   disposable providers.
      #
      #   @return [Boolean]
      required :business_email_required, Moonbase::Internal::Type::Boolean

      # @!attribute collection
      #   The `Collection` that submissions to this form are saved to.
      #
      #   @return [Moonbase::Models::Collection]
      required :collection, -> { Moonbase::Collection }

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #   The name of the form, used as the title on its public page.
      #
      #   @return [String]
      required :name, String

      # @!attribute pages_enabled
      #   If `true`, a Moonbase Pages hosted page is enabled for this form, providing a
      #   standalone public URL for sharing.
      #
      #   @return [Boolean]
      required :pages_enabled, Moonbase::Internal::Type::Boolean

      # @!attribute type
      #   String representing the object’s type. Always `form` for this object.
      #
      #   @return [Symbol, :form]
      required :type, const: :form

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute pages_url
      #   The public URL for the form, if `pages_enabled` is `true`.
      #
      #   @return [String, nil]
      optional :pages_url, String

      # @!attribute redirect_url
      #   Optional URL the user is redirected to after a successful submission. When
      #   unset, no redirect occurs. Stored as a Liquid template; rendered at submission
      #   time with form field values under `submission.<key>` (keyed by the field's
      #   `key`) plus UTM params (`utm_source`, `utm_medium`, `utm_campaign`, `utm_term`,
      #   `utm_content`) automatically appended. Use the `uri_encode` filter for URL-safe
      #   values, e.g.
      #   `https://example.com/thanks?email={{ submission.email | uri_encode }}`. The
      #   rendered URL must parse as a valid URL or the submission errors.
      #
      #   @return [String, nil]
      optional :redirect_url, String

      # @!method initialize(id:, business_email_required:, collection:, created_at:, name:, pages_enabled:, updated_at:, pages_url: nil, redirect_url: nil, type: :form)
      #   Some parameter documentations has been truncated, see {Moonbase::Models::Form}
      #   for more details.
      #
      #   A Form provides a way to create `Items` in a `Collection`, often via a public
      #   URL for external users. Each form submission creates a new item.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param business_email_required [Boolean] `true` if submissions require a business email address, blocking free and dispos
      #
      #   @param collection [Moonbase::Models::Collection] The `Collection` that submissions to this form are saved to.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param name [String] The name of the form, used as the title on its public page.
      #
      #   @param pages_enabled [Boolean] If `true`, a Moonbase Pages hosted page is enabled for this form, providing a st
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param pages_url [String] The public URL for the form, if `pages_enabled` is `true`.
      #
      #   @param redirect_url [String] Optional URL the user is redirected to after a successful submission. When unset
      #
      #   @param type [Symbol, :form] String representing the object’s type. Always `form` for this object.
    end
  end
end
