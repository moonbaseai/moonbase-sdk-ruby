# frozen_string_literal: true

module Moonbase
  module Resources
    class Funnels
      # @api private
      #
      # @param client [Moonbase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
