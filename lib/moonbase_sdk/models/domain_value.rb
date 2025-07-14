# frozen_string_literal: true

module MoonbaseSDK
  module Models
    class DomainValue < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute domain
      #
      #   @return [String]
      required :domain, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/uri/domain"]
      required :type, const: :"value/uri/domain"

      # @!method initialize(domain:, type: :"value/uri/domain")
      #   Internet domain name
      #
      #   @param domain [String]
      #   @param type [Symbol, :"value/uri/domain"]
    end
  end
end
