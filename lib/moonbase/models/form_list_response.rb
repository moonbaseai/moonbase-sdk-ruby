# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Forms#list
    class FormListResponse < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute business_email_required
      #
      #   @return [Boolean]
      required :business_email_required, Moonbase::Internal::Type::Boolean

      # @!attribute collection
      #   A lightweight reference to a `Collection`, containing the minimal information
      #   needed to identify it.
      #
      #   @return [Moonbase::Models::CollectionPointer]
      required :collection, -> { Moonbase::CollectionPointer }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute pages_enabled
      #
      #   @return [Boolean]
      required :pages_enabled, Moonbase::Internal::Type::Boolean

      # @!attribute type
      #
      #   @return [Symbol, :form]
      required :type, const: :form

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute pages_url
      #
      #   @return [String, nil]
      optional :pages_url, String

      # @!attribute redirect_url
      #
      #   @return [String, nil]
      optional :redirect_url, String

      # @!method initialize(id:, business_email_required:, collection:, created_at:, name:, pages_enabled:, updated_at:, pages_url: nil, redirect_url: nil, type: :form)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::FormListResponse} for more details.
      #
      #   Information about the most essential attributes of a Form (does not include the
      #   embed HTML).
      #
      #   @param id [String]
      #
      #   @param business_email_required [Boolean]
      #
      #   @param collection [Moonbase::Models::CollectionPointer] A lightweight reference to a `Collection`, containing the minimal information ne
      #
      #   @param created_at [Time]
      #
      #   @param name [String]
      #
      #   @param pages_enabled [Boolean]
      #
      #   @param updated_at [Time]
      #
      #   @param pages_url [String]
      #
      #   @param redirect_url [String]
      #
      #   @param type [Symbol, :form]
    end
  end
end
