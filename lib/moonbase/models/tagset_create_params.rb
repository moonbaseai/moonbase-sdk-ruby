# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Tagsets#create
    class TagsetCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute name
      #   The name of the tagset.
      #
      #   @return [String]
      required :name, String

      # @!attribute description
      #   An optional description of the tagset's purpose.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute tags
      #   Optional list of tags to create with this tagset. Tags are ordered by their
      #   position in the list.
      #
      #   @return [Array<Moonbase::Models::TagsetCreateParams::Tag>, nil]
      optional :tags, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::TagsetCreateParams::Tag] }

      # @!method initialize(name:, description: nil, tags: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::TagsetCreateParams} for more details.
      #
      #   @param name [String] The name of the tagset.
      #
      #   @param description [String] An optional description of the tagset's purpose.
      #
      #   @param tags [Array<Moonbase::Models::TagsetCreateParams::Tag>] Optional list of tags to create with this tagset. Tags are ordered by their posi
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class Tag < Moonbase::Internal::Type::BaseModel
        # @!attribute color
        #   The color for the tag.
        #
        #   @return [Symbol, Moonbase::Models::TagsetCreateParams::Tag::Color]
        required :color, enum: -> { Moonbase::TagsetCreateParams::Tag::Color }

        # @!attribute name
        #   The name of the tag.
        #
        #   @return [String]
        required :name, String

        # @!attribute id
        #   Existing tag identifier. Include to update an existing tag, omit to create a new
        #   tag.
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(color:, name:, id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::TagsetCreateParams::Tag} for more details.
        #
        #   Parameters for creating or updating a tag within a tagset.
        #
        #   @param color [Symbol, Moonbase::Models::TagsetCreateParams::Tag::Color] The color for the tag.
        #
        #   @param name [String] The name of the tag.
        #
        #   @param id [String] Existing tag identifier. Include to update an existing tag, omit to create a new

        # The color for the tag.
        #
        # @see Moonbase::Models::TagsetCreateParams::Tag#color
        module Color
          extend Moonbase::Internal::Type::Enum

          AMBER = :amber
          BLUE = :blue
          CYAN = :cyan
          EMERALD = :emerald
          FUCHSIA = :fuchsia
          GREEN = :green
          INDIGO = :indigo
          LIME = :lime
          LUNAR = :lunar
          ORANGE = :orange
          PINK = :pink
          PURPLE = :purple
          RED = :red
          ROSE = :rose
          SKY = :sky
          TEAL = :teal
          VIOLET = :violet
          YELLOW = :yellow

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
