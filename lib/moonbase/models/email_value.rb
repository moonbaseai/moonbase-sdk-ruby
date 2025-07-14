# frozen_string_literal: true

module Moonbase
  module Models
    class EmailValue < Moonbase::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/email"]
      required :type, const: :"value/email"

      # @!method initialize(email:, type: :"value/email")
      #   Email address value
      #
      #   @param email [String]
      #   @param type [Symbol, :"value/email"]
    end
  end
end
