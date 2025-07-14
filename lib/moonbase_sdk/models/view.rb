# frozen_string_literal: true

module MoonbaseSDK
  module Models
    class View < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute links
      #
      #   @return [MoonbaseSDK::Models::View::Links]
      required :links, -> { MoonbaseSDK::View::Links }

      # @!attribute name
      #   The name of the view.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   String representing the object’s type. Always `view` for this object.
      #
      #   @return [Symbol, :view]
      required :type, const: :view

      # @!attribute collection
      #   The `Collection` this view belongs to.
      #
      #   @return [MoonbaseSDK::Models::Collection, nil]
      optional :collection, -> { MoonbaseSDK::Collection }

      # @!attribute view_type
      #   The type of view, such as `table` or `board`.
      #
      #   @return [Symbol, MoonbaseSDK::Models::View::ViewType, nil]
      optional :view_type, enum: -> { MoonbaseSDK::View::ViewType }

      # @!method initialize(id:, links:, name:, collection: nil, view_type: nil, type: :view)
      #   A View represents a saved configuration for displaying items in a collection,
      #   including filters and sorting rules.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param links [MoonbaseSDK::Models::View::Links]
      #
      #   @param name [String] The name of the view.
      #
      #   @param collection [MoonbaseSDK::Models::Collection] The `Collection` this view belongs to.
      #
      #   @param view_type [Symbol, MoonbaseSDK::Models::View::ViewType] The type of view, such as `table` or `board`.
      #
      #   @param type [Symbol, :view] String representing the object’s type. Always `view` for this object.

      # @see MoonbaseSDK::Models::View#links
      class Links < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute collection
        #   A link to the `Collection` this view belongs to.
        #
        #   @return [String]
        required :collection, String

        # @!attribute items
        #   A link to the list of `Item` objects that are visible in this view.
        #
        #   @return [String]
        required :items, String

        # @!attribute self_
        #   The canonical URL for this object.
        #
        #   @return [String]
        required :self_, String, api_name: :self

        # @!method initialize(collection:, items:, self_:)
        #   @param collection [String] A link to the `Collection` this view belongs to.
        #
        #   @param items [String] A link to the list of `Item` objects that are visible in this view.
        #
        #   @param self_ [String] The canonical URL for this object.
      end

      # The type of view, such as `table` or `board`.
      #
      # @see MoonbaseSDK::Models::View#view_type
      module ViewType
        extend MoonbaseSDK::Internal::Type::Enum

        TABLE = :table
        BOARD = :board

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
