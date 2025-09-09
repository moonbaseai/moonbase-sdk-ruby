# typed: strong

module Moonbase
  module Models
    class InboxConversationListParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Moonbase::InboxConversationListParams,
            Moonbase::Internal::AnyHash
          )
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

      sig { returns(T.nilable(Moonbase::InboxConversationListParams::Filter)) }
      attr_reader :filter

      sig do
        params(
          filter: Moonbase::InboxConversationListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # Specifies which related objects to include in the response. Valid options are
      # `inbox`, `messages`, and `messages.addresses`.
      sig do
        returns(
          T.nilable(
            T::Array[Moonbase::InboxConversationListParams::Include::OrSymbol]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include:
            T::Array[Moonbase::InboxConversationListParams::Include::OrSymbol]
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
          filter: Moonbase::InboxConversationListParams::Filter::OrHash,
          include:
            T::Array[Moonbase::InboxConversationListParams::Include::OrSymbol],
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
        filter: nil,
        # Specifies which related objects to include in the response. Valid options are
        # `inbox`, `messages`, and `messages.addresses`.
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
            filter: Moonbase::InboxConversationListParams::Filter,
            include:
              T::Array[
                Moonbase::InboxConversationListParams::Include::OrSymbol
              ],
            limit: Integer,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::InboxConversationListParams::Filter,
              Moonbase::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Moonbase::InboxConversationListParams::Filter::ConversationID
            )
          )
        end
        attr_reader :conversation_id

        sig do
          params(
            conversation_id:
              Moonbase::InboxConversationListParams::Filter::ConversationID::OrHash
          ).void
        end
        attr_writer :conversation_id

        sig do
          returns(
            T.nilable(Moonbase::InboxConversationListParams::Filter::InboxID)
          )
        end
        attr_reader :inbox_id

        sig do
          params(
            inbox_id:
              Moonbase::InboxConversationListParams::Filter::InboxID::OrHash
          ).void
        end
        attr_writer :inbox_id

        sig do
          params(
            conversation_id:
              Moonbase::InboxConversationListParams::Filter::ConversationID::OrHash,
            inbox_id:
              Moonbase::InboxConversationListParams::Filter::InboxID::OrHash
          ).returns(T.attached_class)
        end
        def self.new(conversation_id: nil, inbox_id: nil)
        end

        sig do
          override.returns(
            {
              conversation_id:
                Moonbase::InboxConversationListParams::Filter::ConversationID,
              inbox_id: Moonbase::InboxConversationListParams::Filter::InboxID
            }
          )
        end
        def to_hash
        end

        class ConversationID < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::InboxConversationListParams::Filter::ConversationID,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          sig { params(eq: String).returns(T.attached_class) }
          def self.new(eq: nil)
          end

          sig { override.returns({ eq: String }) }
          def to_hash
          end
        end

        class InboxID < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::InboxConversationListParams::Filter::InboxID,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          sig { params(eq: String).returns(T.attached_class) }
          def self.new(eq: nil)
          end

          sig { override.returns({ eq: String }) }
          def to_hash
          end
        end
      end

      module Include
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Moonbase::InboxConversationListParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INBOX =
          T.let(
            :inbox,
            Moonbase::InboxConversationListParams::Include::TaggedSymbol
          )
        MESSAGES =
          T.let(
            :messages,
            Moonbase::InboxConversationListParams::Include::TaggedSymbol
          )
        MESSAGES_ADDRESSES =
          T.let(
            :"messages.addresses",
            Moonbase::InboxConversationListParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::InboxConversationListParams::Include::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
