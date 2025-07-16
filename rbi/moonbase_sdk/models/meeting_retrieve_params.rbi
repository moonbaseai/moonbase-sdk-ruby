# typed: strong

module MoonbaseSDK
  module Models
    class MeetingRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            MoonbaseSDK::MeetingRetrieveParams,
            MoonbaseSDK::Internal::AnyHash
          )
        end

      # Specifies which related objects to include in the response. Valid options are
      # `organizer` and `attendees`.
      sig do
        returns(
          T.nilable(
            T::Array[MoonbaseSDK::MeetingRetrieveParams::Include::OrSymbol]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include:
            T::Array[MoonbaseSDK::MeetingRetrieveParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      sig do
        params(
          include:
            T::Array[MoonbaseSDK::MeetingRetrieveParams::Include::OrSymbol],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies which related objects to include in the response. Valid options are
        # `organizer` and `attendees`.
        include: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include:
              T::Array[MoonbaseSDK::MeetingRetrieveParams::Include::OrSymbol],
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
            T.all(Symbol, MoonbaseSDK::MeetingRetrieveParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ORGANIZER =
          T.let(
            :organizer,
            MoonbaseSDK::MeetingRetrieveParams::Include::TaggedSymbol
          )
        ATTENDEES =
          T.let(
            :attendees,
            MoonbaseSDK::MeetingRetrieveParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[MoonbaseSDK::MeetingRetrieveParams::Include::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
