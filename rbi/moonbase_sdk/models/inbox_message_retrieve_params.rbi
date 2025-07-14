# typed: strong

module MoonbaseSDK
  module Models
    class InboxMessageRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            MoonbaseSDK::InboxMessageRetrieveParams,
            MoonbaseSDK::Internal::AnyHash
          )
        end

      # Specifies which related objects to include in the response. Valid options are
      # `addresses`, `attachments`, and `conversation`.
      sig do
        returns(
          T.nilable(
            T::Array[MoonbaseSDK::InboxMessageRetrieveParams::Include::OrSymbol]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include:
            T::Array[MoonbaseSDK::InboxMessageRetrieveParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      sig do
        params(
          include:
            T::Array[
              MoonbaseSDK::InboxMessageRetrieveParams::Include::OrSymbol
            ],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies which related objects to include in the response. Valid options are
        # `addresses`, `attachments`, and `conversation`.
        include: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include:
              T::Array[
                MoonbaseSDK::InboxMessageRetrieveParams::Include::OrSymbol
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
            T.all(Symbol, MoonbaseSDK::InboxMessageRetrieveParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADDRESSES =
          T.let(
            :addresses,
            MoonbaseSDK::InboxMessageRetrieveParams::Include::TaggedSymbol
          )
        ATTACHMENTS =
          T.let(
            :attachments,
            MoonbaseSDK::InboxMessageRetrieveParams::Include::TaggedSymbol
          )
        CONVERSATION =
          T.let(
            :conversation,
            MoonbaseSDK::InboxMessageRetrieveParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MoonbaseSDK::InboxMessageRetrieveParams::Include::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
