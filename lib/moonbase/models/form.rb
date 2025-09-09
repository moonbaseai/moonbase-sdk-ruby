# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Forms#retrieve
    class Form < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

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
      #   `true` if the form is available at a public URL.
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
      #   An optional URL to redirect users to after a successful submission.
      #
      #   @return [String, nil]
      optional :redirect_url, String

      # @!method initialize(id:, collection:, created_at:, name:, pages_enabled:, updated_at:, pages_url: nil, redirect_url: nil, type: :form)
      #   A Form provides a way to create `Items` in a `Collection`, often via a public
      #   URL for external users. Each form submission creates a new item.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param collection [Moonbase::Models::Collection] The `Collection` that submissions to this form are saved to.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param name [String] The name of the form, used as the title on its public page.
      #
      #   @param pages_enabled [Boolean] `true` if the form is available at a public URL.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param pages_url [String] The public URL for the form, if `pages_enabled` is `true`.
      #
      #   @param redirect_url [String] An optional URL to redirect users to after a successful submission.
      #
      #   @param type [Symbol, :form] String representing the object’s type. Always `form` for this object.
    end
  end
end
