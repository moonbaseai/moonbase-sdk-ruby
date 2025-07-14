# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class Calls
      # @api private
      #
      # @param client [MoonbaseSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
