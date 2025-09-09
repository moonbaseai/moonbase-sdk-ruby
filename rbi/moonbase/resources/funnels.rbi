# typed: strong

module Moonbase
  module Resources
    class Funnels
      # @api private
      sig { params(client: Moonbase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
