# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Meetings#list
    class MeetingPointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :meeting]
      required :type, const: :meeting

      # @!method initialize(id:, type: :meeting)
      #   @param id [String]
      #   @param type [Symbol, :meeting]
    end
  end
end
