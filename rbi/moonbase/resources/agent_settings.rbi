# typed: strong

module Moonbase
  module Resources
    class AgentSettings
      sig do
        params(request_options: Moonbase::RequestOptions::OrHash).returns(
          Moonbase::Models::AgentSettingRetrieveResponse
        )
      end
      def retrieve(request_options: {})
      end

      # @api private
      sig { params(client: Moonbase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
