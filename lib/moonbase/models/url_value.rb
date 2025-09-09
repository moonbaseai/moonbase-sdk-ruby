# frozen_string_literal: true

module Moonbase
  module Models
    class URLValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   A valid URL, conforming to RFC 3986, up to 8,192 characters long. It should
      #   include the protocol, for example 'https://' or 'mailto:support@moonbase.ai'
      #   etc.
      #
      #   @return [String]
      required :data, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/uri/url"]
      required :type, const: :"value/uri/url"

      # @!method initialize(data:, type: :"value/uri/url")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::URLValue} for more details.
      #
      #   URL or web address
      #
      #   @param data [String] A valid URL, conforming to RFC 3986, up to 8,192 characters long. It should incl
      #
      #   @param type [Symbol, :"value/uri/url"]
    end
  end
end
