# typed: strong

module MoonbaseSDK
  module Models
    class InboxConversationListParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            MoonbaseSDK::InboxConversationListParams,
            MoonbaseSDK::Internal::AnyHash
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

      # Filter conversations by one or more inbox IDs.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :inbox

      sig { params(inbox: T::Array[String]).void }
      attr_writer :inbox

      # Specifies which related objects to include in the response. Valid options are
      # `addresses` and `tags`.
      sig do
        returns(
          T.nilable(
            T::Array[
              MoonbaseSDK::InboxConversationListParams::Include::OrSymbol
            ]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include:
            T::Array[
              MoonbaseSDK::InboxConversationListParams::Include::OrSymbol
            ]
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
          inbox: T::Array[String],
          include:
            T::Array[
              MoonbaseSDK::InboxConversationListParams::Include::OrSymbol
            ],
          limit: Integer,
          request_options: MoonbaseSDK::RequestOptions::OrHash
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
        # Filter conversations by one or more inbox IDs.
        inbox: nil,
        # Specifies which related objects to include in the response. Valid options are
        # `addresses` and `tags`.
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
            inbox: T::Array[String],
            include:
              T::Array[
                MoonbaseSDK::InboxConversationListParams::Include::OrSymbol
              ],
            limit: Integer,
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
            T.all(Symbol, MoonbaseSDK::InboxConversationListParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADDRESSES =
          T.let(
            :addresses,
            MoonbaseSDK::InboxConversationListParams::Include::TaggedSymbol
          )
        TAGS =
          T.let(
            :tags,
            MoonbaseSDK::InboxConversationListParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MoonbaseSDK::InboxConversationListParams::Include::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
