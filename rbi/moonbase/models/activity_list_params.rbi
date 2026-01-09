# typed: strong

module Moonbase
  module Models
    class ActivityListParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::ActivityListParams, Moonbase::Internal::AnyHash)
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

      # Filter activities by type, date, or item.
      sig { returns(T.nilable(Moonbase::ActivityListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Moonbase::ActivityListParams::Filter::OrHash).void }
      attr_writer :filter

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
          filter: Moonbase::ActivityListParams::Filter::OrHash,
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
        # Filter activities by type, date, or item.
        filter: nil,
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
            filter: Moonbase::ActivityListParams::Filter,
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
              Moonbase::ActivityListParams::Filter,
              Moonbase::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Moonbase::ActivityListParams::Filter::ItemID)) }
        attr_reader :item_id

        sig do
          params(
            item_id: Moonbase::ActivityListParams::Filter::ItemID::OrHash
          ).void
        end
        attr_writer :item_id

        sig do
          returns(T.nilable(Moonbase::ActivityListParams::Filter::OccurredAt))
        end
        attr_reader :occurred_at

        sig do
          params(
            occurred_at:
              Moonbase::ActivityListParams::Filter::OccurredAt::OrHash
          ).void
        end
        attr_writer :occurred_at

        sig { returns(T.nilable(Moonbase::ActivityListParams::Filter::Type)) }
        attr_reader :type

        sig do
          params(type: Moonbase::ActivityListParams::Filter::Type::OrHash).void
        end
        attr_writer :type

        # Filter activities by type, date, or item.
        sig do
          params(
            item_id: Moonbase::ActivityListParams::Filter::ItemID::OrHash,
            occurred_at:
              Moonbase::ActivityListParams::Filter::OccurredAt::OrHash,
            type: Moonbase::ActivityListParams::Filter::Type::OrHash
          ).returns(T.attached_class)
        end
        def self.new(item_id: nil, occurred_at: nil, type: nil)
        end

        sig do
          override.returns(
            {
              item_id: Moonbase::ActivityListParams::Filter::ItemID,
              occurred_at: Moonbase::ActivityListParams::Filter::OccurredAt,
              type: Moonbase::ActivityListParams::Filter::Type
            }
          )
        end
        def to_hash
        end

        class ItemID < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::ActivityListParams::Filter::ItemID,
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

        class OccurredAt < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::ActivityListParams::Filter::OccurredAt,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Time)) }
          attr_reader :gte

          sig { params(gte: Time).void }
          attr_writer :gte

          sig { returns(T.nilable(Time)) }
          attr_reader :lte

          sig { params(lte: Time).void }
          attr_writer :lte

          sig { params(gte: Time, lte: Time).returns(T.attached_class) }
          def self.new(gte: nil, lte: nil)
          end

          sig { override.returns({ gte: Time, lte: Time }) }
          def to_hash
          end
        end

        class Type < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::ActivityListParams::Filter::Type,
                Moonbase::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Moonbase::ActivityListParams::Filter::Type::In::OrSymbol
                ]
              )
            )
          end
          attr_reader :in_

          sig do
            params(
              in_:
                T::Array[
                  Moonbase::ActivityListParams::Filter::Type::In::OrSymbol
                ]
            ).void
          end
          attr_writer :in_

          sig do
            params(
              in_:
                T::Array[
                  Moonbase::ActivityListParams::Filter::Type::In::OrSymbol
                ]
            ).returns(T.attached_class)
          end
          def self.new(in_: nil)
          end

          sig do
            override.returns(
              {
                in_:
                  T::Array[
                    Moonbase::ActivityListParams::Filter::Type::In::OrSymbol
                  ]
              }
            )
          end
          def to_hash
          end

          module In
            extend Moonbase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Moonbase::ActivityListParams::Filter::Type::In)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVITY_CALL_OCCURRED =
              T.let(
                :"activity/call_occurred",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_FORM_SUBMITTED =
              T.let(
                :"activity/form_submitted",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_INBOX_MESSAGE_SENT =
              T.let(
                :"activity/inbox_message_sent",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_ITEM_CREATED =
              T.let(
                :"activity/item_created",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_ITEM_MENTIONED =
              T.let(
                :"activity/item_mentioned",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_ITEM_MERGED =
              T.let(
                :"activity/item_merged",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_MEETING_HELD =
              T.let(
                :"activity/meeting_held",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_MEETING_SCHEDULED =
              T.let(
                :"activity/meeting_scheduled",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_NOTE_CREATED =
              T.let(
                :"activity/note_created",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_PROGRAM_MESSAGE_BOUNCED =
              T.let(
                :"activity/program_message_bounced",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_PROGRAM_MESSAGE_CLICKED =
              T.let(
                :"activity/program_message_clicked",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_PROGRAM_MESSAGE_COMPLAINED =
              T.let(
                :"activity/program_message_complained",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_PROGRAM_MESSAGE_FAILED =
              T.let(
                :"activity/program_message_failed",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_PROGRAM_MESSAGE_OPENED =
              T.let(
                :"activity/program_message_opened",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_PROGRAM_MESSAGE_SENT =
              T.let(
                :"activity/program_message_sent",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_PROGRAM_MESSAGE_SHIELDED =
              T.let(
                :"activity/program_message_shielded",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )
            ACTIVITY_PROGRAM_MESSAGE_UNSUBSCRIBED =
              T.let(
                :"activity/program_message_unsubscribed",
                Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Moonbase::ActivityListParams::Filter::Type::In::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
