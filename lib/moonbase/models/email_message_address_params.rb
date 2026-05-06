# frozen_string_literal: true

module Moonbase
  module Models
    class EmailMessageAddressParams < Moonbase::Internal::Type::BaseModel
      # @!attribute email
      #   The email address.
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #   The recipient's name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(email:, name: nil)
      #   @param email [String] The email address.
      #
      #   @param name [String] The recipient's name.
    end
  end
end
