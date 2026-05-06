# frozen_string_literal: true

module Moonbase
  module Models
    class SocialXValueParam < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   Social media profile information including both the full URL and extracted
      #   username.
      #
      #   @return [Moonbase::Models::SocialProfileXParam]
      required :data, -> { Moonbase::SocialProfileXParam }

      # @!attribute type
      #
      #   @return [Symbol, :"value/uri/social_x"]
      required :type, const: :"value/uri/social_x"

      # @!method initialize(data:, type: :"value/uri/social_x")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::SocialXValueParam} for more details.
      #
      #   The social media profile for the X (formerly Twitter) platform
      #
      #   @param data [Moonbase::Models::SocialProfileXParam] Social media profile information including both the full URL and extracted usern
      #
      #   @param type [Symbol, :"value/uri/social_x"]
    end
  end
end
