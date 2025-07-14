# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Items#create
    class Item < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #   String representing the object’s type. Always `item` for this object.
      #
      #   @return [Symbol, :item]
      required :type, const: :item

      # @!attribute values
      #   A hash where keys are the `ref` of a `Field` and values are the data stored for
      #   that field.
      #
      #   @return [Hash{Symbol=>MoonbaseSDK::Models::FieldValue, nil}, nil]
      optional :values, -> { MoonbaseSDK::Internal::Type::HashOf[union: MoonbaseSDK::FieldValue, nil?: true] }

      # @!method initialize(id:, values: nil, type: :item)
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::Item} for more details.
      #
      #   An Item represents a single record or row within a Collection. It holds a set of
      #   `values` corresponding to the Collection's `fields`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param values [Hash{Symbol=>MoonbaseSDK::Models::FieldValue, nil}] A hash where keys are the `ref` of a `Field` and values are the data stored for
      #
      #   @param type [Symbol, :item] String representing the object’s type. Always `item` for this object.
    end
  end
end
