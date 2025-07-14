# typed: strong

module Moonbase
  module Models
    class InboxMessageRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Moonbase::InboxMessageRetrieveParams,
            Moonbase::Internal::AnyHash
          )
        end

      # Specifies which related objects to include in the response. Valid options are
      # `addresses`, `attachments`, and `conversation`.
      sig do
        returns(
          T.nilable(
            T::Array[Moonbase::InboxMessageRetrieveParams::Include::OrSymbol]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include:
            T::Array[Moonbase::InboxMessageRetrieveParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      sig do
        params(
          include:
            T::Array[Moonbase::InboxMessageRetrieveParams::Include::OrSymbol],
          request_options: Moonbase::RequestOptions::OrHash
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
              T::Array[Moonbase::InboxMessageRetrieveParams::Include::OrSymbol],
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
            T.all(Symbol, Moonbase::InboxMessageRetrieveParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADDRESSES =
          T.let(
            :addresses,
            Moonbase::InboxMessageRetrieveParams::Include::TaggedSymbol
          )
        ATTACHMENTS =
          T.let(
            :attachments,
            Moonbase::InboxMessageRetrieveParams::Include::TaggedSymbol
          )
        CONVERSATION =
          T.let(
            :conversation,
            Moonbase::InboxMessageRetrieveParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::InboxMessageRetrieveParams::Include::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
