# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Views#list
    class ViewListResponse < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

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

      # @!attribute type
      #
      #   @return [Symbol, :view]
      required :type, const: :view

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute view_type
      #
      #   @return [Symbol, Moonbase::Models::ViewListResponse::ViewType]
      required :view_type, enum: -> { Moonbase::Models::ViewListResponse::ViewType }

      # @!method initialize(id:, collection:, created_at:, name:, updated_at:, view_type:, type: :view)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ViewListResponse} for more details.
      #
      #   @param id [String]
      #
      #   @param collection [Moonbase::Models::CollectionPointer] A lightweight reference to a `Collection`, containing the minimal information ne
      #
      #   @param created_at [Time]
      #
      #   @param name [String]
      #
      #   @param updated_at [Time]
      #
      #   @param view_type [Symbol, Moonbase::Models::ViewListResponse::ViewType]
      #
      #   @param type [Symbol, :view]

      # @see Moonbase::Models::ViewListResponse#view_type
      module ViewType
        extend Moonbase::Internal::Type::Enum

        TABLE = :table
        BOARD = :board

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
