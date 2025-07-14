# typed: strong

module MoonbaseSDK
  module Models
    class InboxConversationRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            MoonbaseSDK::InboxConversationRetrieveParams,
            MoonbaseSDK::Internal::AnyHash
          )
        end

      # Specifies which related objects to include in the response. Valid options are
      # `addresses` and `tags`.
      sig do
        returns(
          T.nilable(
            T::Array[
              MoonbaseSDK::InboxConversationRetrieveParams::Include::OrSymbol
            ]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include:
            T::Array[
              MoonbaseSDK::InboxConversationRetrieveParams::Include::OrSymbol
            ]
        ).void
      end
      attr_writer :include

      sig do
        params(
          include:
            T::Array[
              MoonbaseSDK::InboxConversationRetrieveParams::Include::OrSymbol
            ],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies which related objects to include in the response. Valid options are
        # `addresses` and `tags`.
        include: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include:
              T::Array[
                MoonbaseSDK::InboxConversationRetrieveParams::Include::OrSymbol
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
            T.all(Symbol, MoonbaseSDK::InboxConversationRetrieveParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADDRESSES =
          T.let(
            :addresses,
            MoonbaseSDK::InboxConversationRetrieveParams::Include::TaggedSymbol
          )
        TAGS =
          T.let(
            :tags,
            MoonbaseSDK::InboxConversationRetrieveParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MoonbaseSDK::InboxConversationRetrieveParams::Include::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
