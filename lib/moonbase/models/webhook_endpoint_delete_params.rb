# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::WebhookEndpoints#delete
    class WebhookEndpointDeleteParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
