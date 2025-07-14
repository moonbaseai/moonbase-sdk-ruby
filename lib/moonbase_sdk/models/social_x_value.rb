# frozen_string_literal: true

module MoonbaseSDK
  module Models
    class SocialXValue < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute profile
      #
      #   @return [MoonbaseSDK::Models::SocialXValue::Profile]
      required :profile, -> { MoonbaseSDK::SocialXValue::Profile }

      # @!attribute type
      #
      #   @return [Symbol, :"value/uri/social_x"]
      required :type, const: :"value/uri/social_x"

      # @!method initialize(profile:, type: :"value/uri/social_x")
      #   X (formerly Twitter) username
      #
      #   @param profile [MoonbaseSDK::Models::SocialXValue::Profile]
      #   @param type [Symbol, :"value/uri/social_x"]

      # @see MoonbaseSDK::Models::SocialXValue#profile
      class Profile < MoonbaseSDK::Internal::Type::BaseModel
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
