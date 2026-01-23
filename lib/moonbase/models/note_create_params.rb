# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Notes#create
    class NoteCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute body
      #   The main content of the note.
      #
      #   @return [Moonbase::Models::FormattedText]
      required :body, -> { Moonbase::FormattedText }

      # @!method initialize(body:, request_options: {})
      #   @param body [Moonbase::Models::FormattedText] The main content of the note.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
