# frozen_string_literal: true

module Moonbase
  module Models
    class DomainValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   A valid internet domain name, without protocol (e.g., 'https://') or path.
      #
      #   @return [String]
      required :data, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/uri/domain"]
      required :type, const: :"value/uri/domain"

      # @!method initialize(data:, type: :"value/uri/domain")
      #   Internet domain name
      #
      #   @param data [String] A valid internet domain name, without protocol (e.g., 'https://') or path.
      #
      #   @param type [Symbol, :"value/uri/domain"]
    end
  end
end
