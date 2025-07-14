# typed: strong

module MoonbaseSDK
  module Models
    class FormRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::FormRetrieveParams, MoonbaseSDK::Internal::AnyHash)
        end

      # Specifies which related objects to include in the response. Valid option is
      # `collection.fields`.
      sig do
        returns(
          T.nilable(
            T::Array[MoonbaseSDK::FormRetrieveParams::Include::OrSymbol]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include: T::Array[MoonbaseSDK::FormRetrieveParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      sig do
        params(
          include: T::Array[MoonbaseSDK::FormRetrieveParams::Include::OrSymbol],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies which related objects to include in the response. Valid option is
        # `collection.fields`.
        include: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include:
              T::Array[MoonbaseSDK::FormRetrieveParams::Include::OrSymbol],
            request_options: MoonbaseSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Include
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MoonbaseSDK::FormRetrieveParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COLLECTION_FIELDS =
          T.let(
            :"collection.fields",
            MoonbaseSDK::FormRetrieveParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[MoonbaseSDK::FormRetrieveParams::Include::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
