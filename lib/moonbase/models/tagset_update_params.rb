# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Tagsets#update
    class TagsetUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute description
      #   An updated description of the tagset.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute name
      #   The new name of the tagset.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute tags
      #   Optional full list of tags for this tagset. If provided, tags are ordered by
      #   array position.
      #
      #   @return [Array<Moonbase::Models::TagsetUpdateParams::Tag>, nil]
      optional :tags, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::TagsetUpdateParams::Tag] }

      # @!method initialize(id:, description: nil, name: nil, tags: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::TagsetUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param description [String] An updated description of the tagset.
      #
      #   @param name [String] The new name of the tagset.
      #
      #   @param tags [Array<Moonbase::Models::TagsetUpdateParams::Tag>] Optional full list of tags for this tagset. If provided, tags are ordered by arr
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class Tag < Moonbase::Internal::Type::BaseModel
        # @!attribute color
        #   The color for the tag.
        #
        #   @return [Symbol, Moonbase::Models::TagsetUpdateParams::Tag::Color]
        required :color, enum: -> { Moonbase::TagsetUpdateParams::Tag::Color }

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
        #   {Moonbase::Models::TagsetUpdateParams::Tag} for more details.
        #
        #   Parameters for creating or updating a tag within a tagset.
        #
        #   @param color [Symbol, Moonbase::Models::TagsetUpdateParams::Tag::Color] The color for the tag.
        #
        #   @param name [String] The name of the tag.
        #
        #   @param id [String] Existing tag identifier. Include to update an existing tag, omit to create a new

        # The color for the tag.
        #
        # @see Moonbase::Models::TagsetUpdateParams::Tag#color
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
