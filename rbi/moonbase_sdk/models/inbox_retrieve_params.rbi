# typed: strong

module MoonbaseSDK
  module Models
    class InboxRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            MoonbaseSDK::InboxRetrieveParams,
            MoonbaseSDK::Internal::AnyHash
          )
        end

      # Specifies which related objects to include in the response. Valid option is
      # `tagset`.
      sig do
        returns(T.nilable(MoonbaseSDK::InboxRetrieveParams::Include::OrSymbol))
      end
      attr_reader :include

      sig do
        params(
          include: MoonbaseSDK::InboxRetrieveParams::Include::OrSymbol
        ).void
      end
      attr_writer :include

      sig do
        params(
          include: MoonbaseSDK::InboxRetrieveParams::Include::OrSymbol,
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies which related objects to include in the response. Valid option is
        # `tagset`.
        include: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include: MoonbaseSDK::InboxRetrieveParams::Include::OrSymbol,
            request_options: MoonbaseSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Specifies which related objects to include in the response. Valid option is
      # `tagset`.
      module Include
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MoonbaseSDK::InboxRetrieveParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TAGSET =
          T.let(
            :tagset,
            MoonbaseSDK::InboxRetrieveParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[MoonbaseSDK::InboxRetrieveParams::Include::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
