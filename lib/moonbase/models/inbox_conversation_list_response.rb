# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxConversations#list
    class InboxConversationListResponse < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :inbox_conversation]
      required :type, const: :inbox_conversation

      # @!method initialize(id:, type: :inbox_conversation)
      #   @param id [String]
      #   @param type [Symbol, :inbox_conversation]
    end
  end
end
