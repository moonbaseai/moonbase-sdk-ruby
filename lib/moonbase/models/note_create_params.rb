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

      # @!attribute associations
      #   Link the Note to Moonbase items (person, organization, deal, task, or an item in
      #   a custom collection), meetings, or calls.
      #
      #   @return [Array<Moonbase::Models::Pointer>, nil]
      optional :associations, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Pointer] }

      # @!method initialize(body:, associations: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::NoteCreateParams} for more details.
      #
      #   @param body [Moonbase::Models::FormattedText] The main content of the note.
      #
      #   @param associations [Array<Moonbase::Models::Pointer>] Link the Note to Moonbase items (person, organization, deal, task, or an item in
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
