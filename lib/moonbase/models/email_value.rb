# frozen_string_literal: true

module Moonbase
  module Models
    class EmailValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   A valid email address.
      #
      #   @return [String]
      required :data, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/email"]
      required :type, const: :"value/email"

      # @!method initialize(data:, type: :"value/email")
      #   Email address value
      #
      #   @param data [String] A valid email address.
      #
      #   @param type [Symbol, :"value/email"]
    end
  end
end
