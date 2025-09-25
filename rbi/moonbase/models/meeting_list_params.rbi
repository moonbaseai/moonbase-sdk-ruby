# typed: strong

module Moonbase
  module Models
    class MeetingListParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::MeetingListParams, Moonbase::Internal::AnyHash)
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

      sig { returns(T.nilable(Moonbase::MeetingListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Moonbase::MeetingListParams::Filter::OrHash).void }
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
          filter: Moonbase::MeetingListParams::Filter::OrHash,
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
            filter: Moonbase::MeetingListParams::Filter,
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
              Moonbase::MeetingListParams::Filter,
              Moonbase::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Moonbase::MeetingListParams::Filter::ICalUid)) }
        attr_reader :i_cal_uid

        sig do
          params(
            i_cal_uid: Moonbase::MeetingListParams::Filter::ICalUid::OrHash
          ).void
        end
        attr_writer :i_cal_uid

        sig do
          params(
            i_cal_uid: Moonbase::MeetingListParams::Filter::ICalUid::OrHash
          ).returns(T.attached_class)
        end
        def self.new(i_cal_uid: nil)
        end

        sig do
          override.returns(
            { i_cal_uid: Moonbase::MeetingListParams::Filter::ICalUid }
          )
        end
        def to_hash
        end

        class ICalUid < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::MeetingListParams::Filter::ICalUid,
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
    end
  end
end
