# typed: strong

module MoonbaseSDK
  module Resources
    class ProgramTemplates
      # Retrieves the details of an existing program template.
      sig do
        params(
          id: String,
          include:
            T::Array[
              MoonbaseSDK::ProgramTemplateRetrieveParams::Include::OrSymbol
            ],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::ProgramTemplate)
      end
      def retrieve(
        # The ID of the program template to retrieve.
        id,
        # Specifies which related objects to include in the response. Valid option is
        # `program`.
        include: nil,
        request_options: {}
      )
      end

      # Returns a list of your program templates.
      sig do
        params(
          after: String,
          before: String,
          include:
            T::Array[MoonbaseSDK::ProgramTemplateListParams::Include::OrSymbol],
          limit: Integer,
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(
          MoonbaseSDK::Internal::CursorPage[MoonbaseSDK::ProgramTemplate]
        )
      end
      def list(
        # When specified, returns results starting immediately after the item identified
        # by this cursor. Use the cursor value from the previous response's metadata to
        # fetch the next page of results.
        after: nil,
        # When specified, returns results starting immediately before the item identified
        # by this cursor. Use the cursor value from the response's metadata to fetch the
        # previous page of results.
        before: nil,
        # Specifies which related objects to include in the response. Valid option is
        # `program`.
        include: nil,
        # Maximum number of items to return per page. Must be between 1 and 100. Defaults
        # to 20 if not specified.
        limit: nil,
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
