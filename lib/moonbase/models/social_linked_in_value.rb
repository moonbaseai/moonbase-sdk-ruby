# frozen_string_literal: true

module Moonbase
  module Models
    class SocialLinkedInValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   The social media profile for the LinkedIn platform
      #
      #   @return [Moonbase::Models::SocialLinkedInValue::Data]
      required :data, -> { Moonbase::SocialLinkedInValue::Data }

      # @!attribute type
      #
      #   @return [Symbol, :"value/uri/social_linked_in"]
      required :type, const: :"value/uri/social_linked_in"

      # @!method initialize(data:, type: :"value/uri/social_linked_in")
      #   The social media profile for the LinkedIn platform
      #
      #   @param data [Moonbase::Models::SocialLinkedInValue::Data] The social media profile for the LinkedIn platform
      #
      #   @param type [Symbol, :"value/uri/social_linked_in"]

      # @see Moonbase::Models::SocialLinkedInValue#data
      class Data < Moonbase::Internal::Type::BaseModel
        # @!attribute url
        #   The full URL to the LinkedIn profile.
        #
        #   @return [String]
        required :url, String

        # @!attribute username
        #   The LinkedIn username, including the prefix 'company/' for company pages or
        #   'in/' for personal profiles.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(url:, username:)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::SocialLinkedInValue::Data} for more details.
        #
        #   The social media profile for the LinkedIn platform
        #
        #   @param url [String] The full URL to the LinkedIn profile.
        #
        #   @param username [String] The LinkedIn username, including the prefix 'company/' for company pages or 'in/
      end
    end
  end
end
