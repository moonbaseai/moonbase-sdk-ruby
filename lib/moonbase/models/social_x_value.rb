# frozen_string_literal: true

module Moonbase
  module Models
    class SocialXValue < Moonbase::Internal::Type::BaseModel
      # @!attribute profile
      #
      #   @return [Moonbase::Models::SocialXValue::Profile]
      required :profile, -> { Moonbase::SocialXValue::Profile }

      # @!attribute type
      #
      #   @return [Symbol, :"value/uri/social_x"]
      required :type, const: :"value/uri/social_x"

      # @!method initialize(profile:, type: :"value/uri/social_x")
      #   X (formerly Twitter) username
      #
      #   @param profile [Moonbase::Models::SocialXValue::Profile]
      #   @param type [Symbol, :"value/uri/social_x"]

      # @see Moonbase::Models::SocialXValue#profile
      class Profile < Moonbase::Internal::Type::BaseModel
        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!attribute username
        #
        #   @return [String, nil]
        optional :username, String

        # @!method initialize(url: nil, username: nil)
        #   @param url [String]
        #   @param username [String]
      end
    end
  end
end
