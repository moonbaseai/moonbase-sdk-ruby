# frozen_string_literal: true

module Moonbase
  module Models
    class SocialLinkedInValue < Moonbase::Internal::Type::BaseModel
      # @!attribute profile
      #
      #   @return [Moonbase::Models::SocialLinkedInValue::Profile]
      required :profile, -> { Moonbase::SocialLinkedInValue::Profile }

      # @!attribute type
      #
      #   @return [Symbol, :"value/uri/social_linked_in"]
      required :type, const: :"value/uri/social_linked_in"

      # @!method initialize(profile:, type: :"value/uri/social_linked_in")
      #   LinkedIn profile link
      #
      #   @param profile [Moonbase::Models::SocialLinkedInValue::Profile]
      #   @param type [Symbol, :"value/uri/social_linked_in"]

      # @see Moonbase::Models::SocialLinkedInValue#profile
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
