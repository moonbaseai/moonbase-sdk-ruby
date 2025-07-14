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

      # @!attribute links
      #
      #   @return [Moonbase::Models::Form::Links]
      required :links, -> { Moonbase::Form::Links }

      # @!attribute name
      #   The name of the form, used as the title on its public page.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   String representing the object’s type. Always `form` for this object.
      #
      #   @return [Symbol, :form]
      required :type, const: :form

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute pages_enabled
      #   `true` if the form is available at a public URL.
      #
      #   @return [Boolean, nil]
      optional :pages_enabled, Moonbase::Internal::Type::Boolean

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

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, collection:, links:, name:, created_at: nil, pages_enabled: nil, pages_url: nil, redirect_url: nil, updated_at: nil, type: :form)
      #   A Form provides a way to create `Items` in a `Collection`, often via a public
      #   URL for external users. Each form submission creates a new item.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param collection [Moonbase::Models::Collection] The `Collection` that submissions to this form are saved to.
      #
      #   @param links [Moonbase::Models::Form::Links]
      #
      #   @param name [String] The name of the form, used as the title on its public page.
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param pages_enabled [Boolean] `true` if the form is available at a public URL.
      #
      #   @param pages_url [String] The public URL for the form, if `pages_enabled` is `true`.
      #
      #   @param redirect_url [String] An optional URL to redirect users to after a successful submission.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :form] String representing the object’s type. Always `form` for this object.

      # @see Moonbase::Models::Form#links
      class Links < Moonbase::Internal::Type::BaseModel
        # @!attribute self_
        #   The canonical URL for this object.
        #
        #   @return [String]
        required :self_, String, api_name: :self

        # @!attribute collection
        #   A link to the `Collection` where form submissions are saved.
        #
        #   @return [String, nil]
        optional :collection, String

        # @!method initialize(self_:, collection: nil)
        #   @param self_ [String] The canonical URL for this object.
        #
        #   @param collection [String] A link to the `Collection` where form submissions are saved.
      end
    end
  end
end
