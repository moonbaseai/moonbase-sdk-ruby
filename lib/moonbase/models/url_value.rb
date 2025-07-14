# frozen_string_literal: true

module Moonbase
  module Models
    class URLValue < Moonbase::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, :"value/uri/url"]
      required :type, const: :"value/uri/url"

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(url:, type: :"value/uri/url")
      #   URL or web address
      #
      #   @param url [String]
      #   @param type [Symbol, :"value/uri/url"]
    end
  end
end
