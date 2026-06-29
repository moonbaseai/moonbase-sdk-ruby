# frozen_string_literal: true

module Moonbase
  module Models
    class ViewField < Moonbase::Internal::Type::BaseModel
      # @!attribute field
      #   The field shown in this column.
      #
      #   @return [String]
      required :field, String

      # @!attribute display_fields
      #   Which fields of the related item to show, relative to the related collection.
      #   Omitted means the related collection's default display fields.
      #
      #   @return [Array<String>, nil]
      optional :display_fields, Moonbase::Internal::Type::ArrayOf[String]

      # @!attribute is_pinned
      #   Whether the column is pinned.
      #
      #   @return [Boolean, nil]
      optional :is_pinned, Moonbase::Internal::Type::Boolean

      # @!attribute is_wrapped
      #   Whether the column wraps its content.
      #
      #   @return [Boolean, nil]
      optional :is_wrapped, Moonbase::Internal::Type::Boolean

      # @!attribute size
      #   The column width: a number of pixels, or `fit` (size to content), or `flex`
      #   (fill available space).
      #
      #   @return [Float, Symbol, Moonbase::Models::ViewField::Size, nil]
      optional :size, union: -> { Moonbase::ViewField::Size }

      # @!method initialize(field:, display_fields: nil, is_pinned: nil, is_wrapped: nil, size: nil)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ViewField} for more details.
      #
      #   A column of the view.
      #
      #   @param field [String] The field shown in this column.
      #
      #   @param display_fields [Array<String>] Which fields of the related item to show, relative to the related collection. Om
      #
      #   @param is_pinned [Boolean] Whether the column is pinned.
      #
      #   @param is_wrapped [Boolean] Whether the column wraps its content.
      #
      #   @param size [Float, Symbol, Moonbase::Models::ViewField::Size] The column width: a number of pixels, or `fit` (size to content), or `flex` (fil

      # The column width: a number of pixels, or `fit` (size to content), or `flex`
      # (fill available space).
      #
      # @see Moonbase::Models::ViewField#size
      module Size
        extend Moonbase::Internal::Type::Union

        variant Float

        variant const: -> { Moonbase::Models::ViewField::Size::FIT }

        variant const: -> { Moonbase::Models::ViewField::Size::FLEX }

        # @!method self.variants
        #   @return [Array(Float, Symbol)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Float, Moonbase::ViewField::Size::TaggedSymbol) }
        end

        # @!group

        FIT = :fit
        FLEX = :flex

        # @!endgroup
      end
    end
  end
end
