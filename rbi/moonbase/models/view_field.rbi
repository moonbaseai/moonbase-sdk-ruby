# typed: strong

module Moonbase
  module Models
    class ViewField < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::ViewField, Moonbase::Internal::AnyHash) }

      # The field shown in this column.
      sig { returns(String) }
      attr_accessor :field

      # Which fields of the related item to show, relative to the related collection.
      # Omitted means the related collection's default display fields.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :display_fields

      sig { params(display_fields: T::Array[String]).void }
      attr_writer :display_fields

      # Whether the column is pinned.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_pinned

      sig { params(is_pinned: T::Boolean).void }
      attr_writer :is_pinned

      # Whether the column wraps its content.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_wrapped

      sig { params(is_wrapped: T::Boolean).void }
      attr_writer :is_wrapped

      # The column width: a number of pixels, or `fit` (size to content), or `flex`
      # (fill available space).
      sig do
        returns(T.nilable(T.any(Float, Moonbase::ViewField::Size::OrSymbol)))
      end
      attr_reader :size

      sig do
        params(size: T.any(Float, Moonbase::ViewField::Size::OrSymbol)).void
      end
      attr_writer :size

      # A column of the view.
      sig do
        params(
          field: String,
          display_fields: T::Array[String],
          is_pinned: T::Boolean,
          is_wrapped: T::Boolean,
          size: T.any(Float, Moonbase::ViewField::Size::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # The field shown in this column.
        field:,
        # Which fields of the related item to show, relative to the related collection.
        # Omitted means the related collection's default display fields.
        display_fields: nil,
        # Whether the column is pinned.
        is_pinned: nil,
        # Whether the column wraps its content.
        is_wrapped: nil,
        # The column width: a number of pixels, or `fit` (size to content), or `flex`
        # (fill available space).
        size: nil
      )
      end

      sig do
        override.returns(
          {
            field: String,
            display_fields: T::Array[String],
            is_pinned: T::Boolean,
            is_wrapped: T::Boolean,
            size: T.any(Float, Moonbase::ViewField::Size::OrSymbol)
          }
        )
      end
      def to_hash
      end

      # The column width: a number of pixels, or `fit` (size to content), or `flex`
      # (fill available space).
      module Size
        extend Moonbase::Internal::Type::Union

        Variants =
          T.type_alias { T.any(Float, Moonbase::ViewField::Size::TaggedSymbol) }

        sig { override.returns(T::Array[Moonbase::ViewField::Size::Variants]) }
        def self.variants
        end

        TaggedSymbol = T.type_alias { T.all(Symbol, Moonbase::ViewField::Size) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FIT = T.let(:fit, Moonbase::ViewField::Size::TaggedSymbol)
        FLEX = T.let(:flex, Moonbase::ViewField::Size::TaggedSymbol)
      end
    end
  end
end
