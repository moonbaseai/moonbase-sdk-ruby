# frozen_string_literal: true

module Moonbase
  module Models
    class SocialXValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   Social media profile information including both the full URL and extracted
      #   username.
      #
      #   @return [Moonbase::Models::SocialXValue::Data]
      required :data, -> { Moonbase::SocialXValue::Data }

      # @!attribute type
      #
      #   @return [Symbol, :"value/uri/social_x"]
      required :type, const: :"value/uri/social_x"

      # @!method initialize(data:, type: :"value/uri/social_x")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::SocialXValue} for more details.
      #
      #   The social media profile for the X (formerly Twitter) platform
      #
      #   @param data [Moonbase::Models::SocialXValue::Data] Social media profile information including both the full URL and extracted usern
      #
      #   @param type [Symbol, :"value/uri/social_x"]

      # @see Moonbase::Models::SocialXValue#data
      class Data < Moonbase::Internal::Type::BaseModel
        # @!attribute url
        #   The full URL to the X profile, starting with 'https://x.com/'
        #
        #   @return [String]
        required :url, String

        # @!attribute username
        #   The X username, up to 15 characters long, containing only lowercase letters
        #   (a-z), uppercase letters (A-Z), numbers (0-9), and underscores (\_). Does not
        #   include the '@' symbol prefix.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(url:, username:)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::SocialXValue::Data} for more details.
        #
        #   Social media profile information including both the full URL and extracted
        #   username.
        #
        #   @param url [String] The full URL to the X profile, starting with 'https://x.com/'
        #
        #   @param username [String] The X username, up to 15 characters long, containing only lowercase letters (a-z
      end
    end
  end
end
