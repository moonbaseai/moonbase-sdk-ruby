# frozen_string_literal: true

module Moonbase
  module Models
    class CurrentMember < Moonbase::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, :current_member]
      required :type, const: :current_member

      # @!method initialize(type: :current_member)
      #   Resolves to the team member who creates the record.
      #
      #   @param type [Symbol, :current_member]
    end
  end
end
