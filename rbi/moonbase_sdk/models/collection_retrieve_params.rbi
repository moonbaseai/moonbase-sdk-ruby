# typed: strong

module MoonbaseSDK
  module Models
    class CollectionRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            MoonbaseSDK::CollectionRetrieveParams,
            MoonbaseSDK::Internal::AnyHash
          )
        end

      # Specifies which related objects to include in the response. Valid options are
      # `fields` and `views`.
      sig do
        returns(
          T.nilable(
            T::Array[MoonbaseSDK::CollectionRetrieveParams::Include::OrSymbol]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include:
            T::Array[MoonbaseSDK::CollectionRetrieveParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      sig do
        params(
          include:
            T::Array[MoonbaseSDK::CollectionRetrieveParams::Include::OrSymbol],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies which related objects to include in the response. Valid options are
        # `fields` and `views`.
        include: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include:
              T::Array[
                MoonbaseSDK::CollectionRetrieveParams::Include::OrSymbol
              ],
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
            T.all(Symbol, MoonbaseSDK::CollectionRetrieveParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FIELDS =
          T.let(
            :fields,
            MoonbaseSDK::CollectionRetrieveParams::Include::TaggedSymbol
          )
        VIEWS =
          T.let(
            :views,
            MoonbaseSDK::CollectionRetrieveParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MoonbaseSDK::CollectionRetrieveParams::Include::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
