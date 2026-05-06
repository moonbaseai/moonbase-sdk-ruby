# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Collections#list
    class CollectionListResponse < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute kind
      #
      #   @return [Symbol, Moonbase::Models::CollectionListResponse::Kind]
      required :kind, enum: -> { Moonbase::Models::CollectionListResponse::Kind }

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute ref
      #
      #   @return [String]
      required :ref, String

      # @!attribute type
      #
      #   @return [Symbol, :collection]
      required :type, const: :collection

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!method initialize(id:, created_at:, kind:, name:, ref:, updated_at:, description: nil, type: :collection)
      #   Information about the most essential attributes of a Collection (does not
      #   include the collection's field definitions).
      #
      #   @param id [String]
      #   @param created_at [Time]
      #   @param kind [Symbol, Moonbase::Models::CollectionListResponse::Kind]
      #   @param name [String]
      #   @param ref [String]
      #   @param updated_at [Time]
      #   @param description [String]
      #   @param type [Symbol, :collection]

      # @see Moonbase::Models::CollectionListResponse#kind
      module Kind
        extend Moonbase::Internal::Type::Enum

        SYSTEM = :system
        FORM = :form
        CUSTOM = :custom

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
