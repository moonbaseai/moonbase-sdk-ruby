# typed: strong

module Moonbase
  module Models
    class MeetingRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::MeetingRetrieveParams, Moonbase::Internal::AnyHash)
        end

      # Specifies which related objects to include in the response. Valid options are
      # `organizer`, `attendees`, `transcript`, `note`, and `summary`.
      sig do
        returns(
          T.nilable(
            T::Array[Moonbase::MeetingRetrieveParams::Include::OrSymbol]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include: T::Array[Moonbase::MeetingRetrieveParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      sig do
        params(
          include: T::Array[Moonbase::MeetingRetrieveParams::Include::OrSymbol],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies which related objects to include in the response. Valid options are
        # `organizer`, `attendees`, `transcript`, `note`, and `summary`.
        include: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include:
              T::Array[Moonbase::MeetingRetrieveParams::Include::OrSymbol],
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
            T.all(Symbol, Moonbase::MeetingRetrieveParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ORGANIZER =
          T.let(
            :organizer,
            Moonbase::MeetingRetrieveParams::Include::TaggedSymbol
          )
        ATTENDEES =
          T.let(
            :attendees,
            Moonbase::MeetingRetrieveParams::Include::TaggedSymbol
          )
        TRANSCRIPT =
          T.let(
            :transcript,
            Moonbase::MeetingRetrieveParams::Include::TaggedSymbol
          )
        NOTE =
          T.let(:note, Moonbase::MeetingRetrieveParams::Include::TaggedSymbol)
        SUMMARY =
          T.let(
            :summary,
            Moonbase::MeetingRetrieveParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Moonbase::MeetingRetrieveParams::Include::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
