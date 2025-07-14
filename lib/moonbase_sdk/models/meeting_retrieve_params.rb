# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Meetings#retrieve
    class MeetingRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid options are
      #   `organizer` and `attendees`.
      #
      #   @return [Array<Symbol, MoonbaseSDK::Models::MeetingRetrieveParams::Include>, nil]
      optional :include,
               -> { MoonbaseSDK::Internal::Type::ArrayOf[enum: MoonbaseSDK::MeetingRetrieveParams::Include] }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::MeetingRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, MoonbaseSDK::Models::MeetingRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `o
      #
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend MoonbaseSDK::Internal::Type::Enum

        ORGANIZER = :organizer
        ATTENDEES = :attendees

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
