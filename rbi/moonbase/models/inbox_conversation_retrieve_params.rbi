# typed: strong

module Moonbase
  module Models
    class InboxConversationRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Moonbase::InboxConversationRetrieveParams,
            Moonbase::Internal::AnyHash
          )
        end

      # Specifies which related objects to include in the response. Valid options are
      # `addresses` and `tags`.
      sig do
        returns(
          T.nilable(
            T::Array[
              Moonbase::InboxConversationRetrieveParams::Include::OrSymbol
            ]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include:
            T::Array[
              Moonbase::InboxConversationRetrieveParams::Include::OrSymbol
            ]
        ).void
      end
      attr_writer :include

      sig do
        params(
          include:
            T::Array[
              Moonbase::InboxConversationRetrieveParams::Include::OrSymbol
            ],
          request_options: Moonbase::RequestOptions::OrHash
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
                Moonbase::InboxConversationRetrieveParams::Include::OrSymbol
              ],
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Include
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Moonbase::InboxConversationRetrieveParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADDRESSES =
          T.let(
            :addresses,
            Moonbase::InboxConversationRetrieveParams::Include::TaggedSymbol
          )
        TAGS =
          T.let(
            :tags,
            Moonbase::InboxConversationRetrieveParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::InboxConversationRetrieveParams::Include::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
