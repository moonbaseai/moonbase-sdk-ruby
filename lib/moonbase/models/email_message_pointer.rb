# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxMessages#list
    class EmailMessagePointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :email_message]
      required :type, const: :email_message

      # @!method initialize(id:, type: :email_message)
      #   @param id [String]
      #   @param type [Symbol, :email_message]
    end
  end
end
