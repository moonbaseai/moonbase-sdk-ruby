# typed: strong

module Moonbase
  module Models
    class InboxMessageListParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::InboxMessageListParams, Moonbase::Internal::AnyHash)
        end

      # When specified, returns results starting immediately after the item identified
      # by this cursor. Use the cursor value from the previous response's metadata to
      # fetch the next page of results.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # When specified, returns results starting immediately before the item identified
      # by this cursor. Use the cursor value from the response's metadata to fetch the
      # previous page of results.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Filter messages by one or more conversation IDs.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :conversation

      sig { params(conversation: T::Array[String]).void }
      attr_writer :conversation

      # Filter messages by one or more inbox IDs.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :inbox

      sig { params(inbox: T::Array[String]).void }
      attr_writer :inbox

      # Specifies which related objects to include in the response. Valid options are
      # `addresses`, `attachments`, and `conversation`.
      sig do
        returns(
          T.nilable(
            T::Array[Moonbase::InboxMessageListParams::Include::OrSymbol]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include: T::Array[Moonbase::InboxMessageListParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      # Maximum number of items to return per page. Must be between 1 and 100. Defaults
      # to 20 if not specified.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          after: String,
          before: String,
          conversation: T::Array[String],
          inbox: T::Array[String],
          include:
            T::Array[Moonbase::InboxMessageListParams::Include::OrSymbol],
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # When specified, returns results starting immediately after the item identified
        # by this cursor. Use the cursor value from the previous response's metadata to
        # fetch the next page of results.
        after: nil,
        # When specified, returns results starting immediately before the item identified
        # by this cursor. Use the cursor value from the response's metadata to fetch the
        # previous page of results.
        before: nil,
        # Filter messages by one or more conversation IDs.
        conversation: nil,
        # Filter messages by one or more inbox IDs.
        inbox: nil,
        # Specifies which related objects to include in the response. Valid options are
        # `addresses`, `attachments`, and `conversation`.
        include: nil,
        # Maximum number of items to return per page. Must be between 1 and 100. Defaults
        # to 20 if not specified.
        limit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            conversation: T::Array[String],
            inbox: T::Array[String],
            include:
              T::Array[Moonbase::InboxMessageListParams::Include::OrSymbol],
            limit: Integer,
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
            T.all(Symbol, Moonbase::InboxMessageListParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADDRESSES =
          T.let(
            :addresses,
            Moonbase::InboxMessageListParams::Include::TaggedSymbol
          )
        ATTACHMENTS =
          T.let(
            :attachments,
            Moonbase::InboxMessageListParams::Include::TaggedSymbol
          )
        CONVERSATION =
          T.let(
            :conversation,
            Moonbase::InboxMessageListParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Moonbase::InboxMessageListParams::Include::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
