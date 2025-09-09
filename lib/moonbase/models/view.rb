# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Views#retrieve
    class View < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

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

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute view_type
      #   The type of view, such as `table` or `board`.
      #
      #   @return [Symbol, Moonbase::Models::View::ViewType]
      required :view_type, enum: -> { Moonbase::View::ViewType }

      # @!attribute collection
      #   The `Collection` this view belongs to.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Moonbase::Models::Collection, nil]
      optional :collection, -> { Moonbase::Collection }

      # @!method initialize(id:, created_at:, name:, updated_at:, view_type:, collection: nil, type: :view)
      #   Some parameter documentations has been truncated, see {Moonbase::Models::View}
      #   for more details.
      #
      #   A View represents a saved configuration for displaying items in a collection,
      #   including filters and sorting rules.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param name [String] The name of the view.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param view_type [Symbol, Moonbase::Models::View::ViewType] The type of view, such as `table` or `board`.
      #
      #   @param collection [Moonbase::Models::Collection] The `Collection` this view belongs to.
      #
      #   @param type [Symbol, :view] String representing the object’s type. Always `view` for this object.

      # The type of view, such as `table` or `board`.
      #
      # @see Moonbase::Models::View#view_type
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
