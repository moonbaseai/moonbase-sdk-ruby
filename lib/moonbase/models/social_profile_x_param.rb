# frozen_string_literal: true

module Moonbase
  module Models
    class SocialProfileXParam < Moonbase::Internal::Type::BaseModel
      # @!attribute url
      #   The full URL to the X profile, starting with 'https://x.com/'
      #
      #   @return [String, nil]
      optional :url, String

      # @!attribute username
      #   The X username, up to 15 characters long, containing only lowercase letters
      #   (a-z), uppercase letters (A-Z), numbers (0-9), and underscores (\_). Does not
      #   include the '@' symbol prefix.
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(url: nil, username: nil)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::SocialProfileXParam} for more details.
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
