# typed: strong

module MoonbaseSDK
  module Resources
    class Views
      sig { returns(MoonbaseSDK::Resources::Views::Items) }
      attr_reader :items

      # Retrieves the details of an existing view.
      sig do
        params(
          id: String,
          include: T::Array[MoonbaseSDK::ViewRetrieveParams::Include::OrSymbol],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::View)
      end
      def retrieve(
        # The ID of the view to retrieve.
        id,
        # Specifies which related objects to include in the response. Valid option is
        # `collection`.
        include: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: MoonbaseSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
