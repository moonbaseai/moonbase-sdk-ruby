# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Unsubscribes#create
    class UnsubscribeCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!method initialize(email:, request_options: {})
      #   @param email [String]
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
