# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Meetings#retrieve
    class MeetingRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid options are
      #   `organizer` and `attendees`.
      #
      #   @return [Array<Symbol, Moonbase::Models::MeetingRetrieveParams::Include>, nil]
      optional :include,
               -> { Moonbase::Internal::Type::ArrayOf[enum: Moonbase::MeetingRetrieveParams::Include] }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::MeetingRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, Moonbase::Models::MeetingRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `o
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend Moonbase::Internal::Type::Enum

        ORGANIZER = :organizer
        ATTENDEES = :attendees
        TRANSCRIPT = :transcript

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
