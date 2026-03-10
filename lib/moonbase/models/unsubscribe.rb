# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Unsubscribes#create
    class Unsubscribe < Moonbase::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute type
      #
      #   @return [Symbol, :unsubscribe]
      required :type, const: :unsubscribe

      # @!method initialize(created_at:, email:, type: :unsubscribe)
      #   @param created_at [Time]
      #   @param email [String]
      #   @param type [Symbol, :unsubscribe]
    end
  end
end
