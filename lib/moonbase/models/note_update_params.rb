# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Notes#update
    class NoteUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute body
      #   The main content of the note.
      #
      #   @return [Moonbase::Models::FormattedText]
      required :body, -> { Moonbase::FormattedText }

      # @!attribute lock_version
      #   The current lock version of the note for optimistic concurrency control.
      #
      #   @return [Integer]
      required :lock_version, Integer

      # @!method initialize(body:, lock_version:, request_options: {})
      #   @param body [Moonbase::Models::FormattedText] The main content of the note.
      #
      #   @param lock_version [Integer] The current lock version of the note for optimistic concurrency control.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
