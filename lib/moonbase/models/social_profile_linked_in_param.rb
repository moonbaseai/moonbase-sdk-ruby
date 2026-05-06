# frozen_string_literal: true

module Moonbase
  module Models
    class SocialProfileLinkedInParam < Moonbase::Internal::Type::BaseModel
      # @!attribute url
      #   The full URL to the LinkedIn profile.
      #
      #   @return [String, nil]
      optional :url, String

      # @!attribute username
      #   The LinkedIn username, including the prefix 'company/' for company pages or
      #   'in/' for personal profiles.
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(url: nil, username: nil)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::SocialProfileLinkedInParam} for more details.
      #
      #   Social media profile information including both the full URL and extracted
      #   username.
      #
      #   @param url [String] The full URL to the LinkedIn profile.
      #
      #   @param username [String] The LinkedIn username, including the prefix 'company/' for company pages or 'in/
    end
  end
end
