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

      # Filter activities by which entities were involved. Must be paired with
      # constituent_entity_type.
      sig do
        returns(T.nilable(Moonbase::ActivityListParams::ConstituentEntityID))
      end
      attr_reader :constituent_entity_id

      sig do
        params(
          constituent_entity_id:
            Moonbase::ActivityListParams::ConstituentEntityID::OrHash
        ).void
      end
      attr_writer :constituent_entity_id

      # Filter activities by which entities were involved. Must be paired with
      # constituent_entity_id.
      sig do
        returns(T.nilable(Moonbase::ActivityListParams::ConstituentEntityType))
      end
      attr_reader :constituent_entity_type

      sig do
        params(
          constituent_entity_type:
            Moonbase::ActivityListParams::ConstituentEntityType::OrHash
        ).void
      end
      attr_writer :constituent_entity_type

      # Filter activities by which entities were involved via specific relations. Must
      # be paired with constituent_entity_type and constituent_entity_id.
      sig do
        returns(T.nilable(Moonbase::ActivityListParams::ConstituentRelation))
      end
      attr_reader :constituent_relation

      sig do
        params(
          constituent_relation:
            Moonbase::ActivityListParams::ConstituentRelation::OrHash
        ).void
      end
      attr_writer :constituent_relation

      # Maximum number of items to return per page. Must be between 1 and 100. Defaults
      # to 20 if not specified.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter activities by when they occurred.
      sig { returns(T.nilable(Moonbase::ActivityListParams::OccurredAt)) }
      attr_reader :occurred_at

      sig do
        params(
          occurred_at: Moonbase::ActivityListParams::OccurredAt::OrHash
        ).void
      end
      attr_writer :occurred_at

      # Filter activities by type.
      sig { returns(T.nilable(Moonbase::ActivityListParams::Type)) }
      attr_reader :type

      sig { params(type: Moonbase::ActivityListParams::Type::OrHash).void }
      attr_writer :type

      sig do
        params(
          after: String,
          before: String,
          constituent_entity_id:
            Moonbase::ActivityListParams::ConstituentEntityID::OrHash,
          constituent_entity_type:
            Moonbase::ActivityListParams::ConstituentEntityType::OrHash,
          constituent_relation:
            Moonbase::ActivityListParams::ConstituentRelation::OrHash,
          limit: Integer,
          occurred_at: Moonbase::ActivityListParams::OccurredAt::OrHash,
          type: Moonbase::ActivityListParams::Type::OrHash,
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
        # Filter activities by which entities were involved. Must be paired with
        # constituent_entity_type.
        constituent_entity_id: nil,
        # Filter activities by which entities were involved. Must be paired with
        # constituent_entity_id.
        constituent_entity_type: nil,
        # Filter activities by which entities were involved via specific relations. Must
        # be paired with constituent_entity_type and constituent_entity_id.
        constituent_relation: nil,
        # Maximum number of items to return per page. Must be between 1 and 100. Defaults
        # to 20 if not specified.
        limit: nil,
        # Filter activities by when they occurred.
        occurred_at: nil,
        # Filter activities by type.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            constituent_entity_id:
              Moonbase::ActivityListParams::ConstituentEntityID,
            constituent_entity_type:
              Moonbase::ActivityListParams::ConstituentEntityType,
            constituent_relation:
              Moonbase::ActivityListParams::ConstituentRelation,
            limit: Integer,
            occurred_at: Moonbase::ActivityListParams::OccurredAt,
            type: Moonbase::ActivityListParams::Type,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class ConstituentEntityID < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::ActivityListParams::ConstituentEntityID,
              Moonbase::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :eq

        sig { params(eq: String).void }
        attr_writer :eq

        # Filter activities by which entities were involved. Must be paired with
        # constituent_entity_type.
        sig { params(eq: String).returns(T.attached_class) }
        def self.new(eq: nil)
        end

        sig { override.returns({ eq: String }) }
        def to_hash
        end
      end

      class ConstituentEntityType < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::ActivityListParams::ConstituentEntityType,
              Moonbase::Internal::AnyHash
            )
          end

        # The type of the entity involved as a constituent of the activity.
        sig do
          returns(
            T.nilable(
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::OrSymbol
            )
          )
        end
        attr_reader :eq

        sig do
          params(
            eq:
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::OrSymbol
          ).void
        end
        attr_writer :eq

        # Filter activities by which entities were involved. Must be paired with
        # constituent_entity_id.
        sig do
          params(
            eq:
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of the entity involved as a constituent of the activity.
          eq: nil
        )
        end

        sig do
          override.returns(
            {
              eq:
                Moonbase::ActivityListParams::ConstituentEntityType::Eq::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The type of the entity involved as a constituent of the activity.
        module Eq
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Moonbase::ActivityListParams::ConstituentEntityType::Eq
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL =
            T.let(
              :call,
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::TaggedSymbol
            )
          COLLECTION =
            T.let(
              :collection,
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::TaggedSymbol
            )
          EMAIL_MESSAGE =
            T.let(
              :email_message,
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::TaggedSymbol
            )
          FILE =
            T.let(
              :file,
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::TaggedSymbol
            )
          ITEM =
            T.let(
              :item,
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::TaggedSymbol
            )
          MEETING =
            T.let(
              :meeting,
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::TaggedSymbol
            )
          NOTE =
            T.let(
              :note,
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::TaggedSymbol
            )
          PROGRAM =
            T.let(
              :program,
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::TaggedSymbol
            )
          PROGRAM_MESSAGE =
            T.let(
              :program_message,
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::TaggedSymbol
            )
          PROGRAM_TEMPLATE =
            T.let(
              :program_template,
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::TaggedSymbol
            )
          UNSUBSCRIBE =
            T.let(
              :unsubscribe,
              Moonbase::ActivityListParams::ConstituentEntityType::Eq::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Moonbase::ActivityListParams::ConstituentEntityType::Eq::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class ConstituentRelation < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::ActivityListParams::ConstituentRelation,
              Moonbase::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Moonbase::ActivityListParams::ConstituentRelation::Eq::OrSymbol
            )
          )
        end
        attr_reader :eq

        sig do
          params(
            eq: Moonbase::ActivityListParams::ConstituentRelation::Eq::OrSymbol
          ).void
        end
        attr_writer :eq

        # Filter activities by which entities were involved via specific relations. Must
        # be paired with constituent_entity_type and constituent_entity_id.
        sig do
          params(
            eq: Moonbase::ActivityListParams::ConstituentRelation::Eq::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(eq: nil)
        end

        sig do
          override.returns(
            {
              eq:
                Moonbase::ActivityListParams::ConstituentRelation::Eq::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Eq
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Moonbase::ActivityListParams::ConstituentRelation::Eq
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTOR =
            T.let(
              :actor,
              Moonbase::ActivityListParams::ConstituentRelation::Eq::TaggedSymbol
            )
          OBJECT =
            T.let(
              :object,
              Moonbase::ActivityListParams::ConstituentRelation::Eq::TaggedSymbol
            )
          TARGET =
            T.let(
              :target,
              Moonbase::ActivityListParams::ConstituentRelation::Eq::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Moonbase::ActivityListParams::ConstituentRelation::Eq::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class OccurredAt < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::ActivityListParams::OccurredAt,
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

        # Filter activities by when they occurred.
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
              Moonbase::ActivityListParams::Type,
              Moonbase::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Moonbase::ActivityListParams::Type::Eq::OrSymbol))
        end
        attr_reader :eq

        sig do
          params(eq: Moonbase::ActivityListParams::Type::Eq::OrSymbol).void
        end
        attr_writer :eq

        # Filter activities by type.
        sig do
          params(eq: Moonbase::ActivityListParams::Type::Eq::OrSymbol).returns(
            T.attached_class
          )
        end
        def self.new(eq: nil)
        end

        sig do
          override.returns(
            { eq: Moonbase::ActivityListParams::Type::Eq::OrSymbol }
          )
        end
        def to_hash
        end

        module Eq
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Moonbase::ActivityListParams::Type::Eq)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVITY_CALL_OCCURRED =
            T.let(
              :"activity/call_occurred",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_FORM_SUBMITTED =
            T.let(
              :"activity/form_submitted",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_INBOX_MESSAGE_SENT =
            T.let(
              :"activity/inbox_message_sent",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_ITEM_CREATED =
            T.let(
              :"activity/item_created",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_ITEM_MENTIONED =
            T.let(
              :"activity/item_mentioned",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_ITEM_MERGED =
            T.let(
              :"activity/item_merged",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_FILE_CREATED =
            T.let(
              :"activity/file_created",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_MEETING_HELD =
            T.let(
              :"activity/meeting_held",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_MEETING_SCHEDULED =
            T.let(
              :"activity/meeting_scheduled",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_NOTE_CREATED =
            T.let(
              :"activity/note_created",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_BOUNCED =
            T.let(
              :"activity/program_message_bounced",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_CLICKED =
            T.let(
              :"activity/program_message_clicked",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_COMPLAINED =
            T.let(
              :"activity/program_message_complained",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_FAILED =
            T.let(
              :"activity/program_message_failed",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_OPENED =
            T.let(
              :"activity/program_message_opened",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_SENT =
            T.let(
              :"activity/program_message_sent",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_SHIELDED =
            T.let(
              :"activity/program_message_shielded",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_UNSUBSCRIBED =
            T.let(
              :"activity/program_message_unsubscribed",
              Moonbase::ActivityListParams::Type::Eq::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Moonbase::ActivityListParams::Type::Eq::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
