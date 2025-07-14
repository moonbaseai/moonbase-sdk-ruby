# typed: strong

module Moonbase
  module Models
    class ViewRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::ViewRetrieveParams, Moonbase::Internal::AnyHash)
        end

      # Specifies which related objects to include in the response. Valid option is
      # `collection`.
      sig do
        returns(
          T.nilable(T::Array[Moonbase::ViewRetrieveParams::Include::OrSymbol])
        )
      end
      attr_reader :include

      sig do
        params(
          include: T::Array[Moonbase::ViewRetrieveParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      sig do
        params(
          include: T::Array[Moonbase::ViewRetrieveParams::Include::OrSymbol],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies which related objects to include in the response. Valid option is
        # `collection`.
        include: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include: T::Array[Moonbase::ViewRetrieveParams::Include::OrSymbol],
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Include
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::ViewRetrieveParams::Include) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COLLECTION =
          T.let(
            :collection,
            Moonbase::ViewRetrieveParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Moonbase::ViewRetrieveParams::Include::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
