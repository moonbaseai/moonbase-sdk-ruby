# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxMessages#list
    class MessagePointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :message]
      required :type, const: :message

      # @!method initialize(id:, type: :message)
      #   @param id [String]
      #   @param type [Symbol, :message]
    end
  end
end
