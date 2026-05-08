# frozen_string_literal: true

module Moonbase
  module Models
    class SocialLinkedInValueParam < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   The social media profile for the LinkedIn platform
      #
      #   @return [Moonbase::Models::SocialProfileLinkedInParam]
      required :data, -> { Moonbase::SocialProfileLinkedInParam }

      # @!attribute type
      #
      #   @return [Symbol, :"value/uri/social_linked_in"]
      required :type, const: :"value/uri/social_linked_in"

      # @!method initialize(data:, type: :"value/uri/social_linked_in")
      #   The social media profile for the LinkedIn platform
      #
      #   @param data [Moonbase::Models::SocialProfileLinkedInParam] The social media profile for the LinkedIn platform
      #
      #   @param type [Symbol, :"value/uri/social_linked_in"]
    end
  end
end
