# typed: strong

module Moonbase
  module Resources
    # Manage your marketing campaigns and forms
    class Forms
      # Creates a new form with an auto-generated collection and default fields.
      sig do
        params(
          name: String,
          business_email_required: T::Boolean,
          pages_enabled: T::Boolean,
          redirect_url: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Form)
      end
      def create(
        # The name of the form, used as the title on its public page.
        name:,
        # If `true`, submissions require a business email address. Defaults to `false`.
        business_email_required: nil,
        # If `true`, enables a Moonbase Pages hosted page for this form, providing a
        # standalone public URL for sharing. Defaults to `false`.
        pages_enabled: nil,
        # Optional URL the user is redirected to after a successful submission. Omit to
        # leave submissions without a redirect. Stored as a Liquid template; rendered at
        # submission time with form field values under `submission.<key>` (keyed by the
        # field's `key`) plus UTM params (`utm_source`, `utm_medium`, `utm_campaign`,
        # `utm_term`, `utm_content`) automatically appended. Use the `uri_encode` filter
        # for URL-safe values, e.g.
        # `https://example.com/thanks?email={{ submission.email | uri_encode }}`. The
        # rendered URL must parse as a valid URL or the submission errors.
        redirect_url: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing form.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Form)
      end
      def retrieve(
        # The ID of the Form to retrieve.
        id,
        request_options: {}
      )
      end

      # Updates an existing form.
      sig do
        params(
          id: String,
          business_email_required: T::Boolean,
          name: String,
          pages_enabled: T::Boolean,
          redirect_url: T.nilable(String),
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Form)
      end
      def update(
        # The ID of the Form to update.
        id,
        # If `true`, submissions require a business email address.
        business_email_required: nil,
        # The new name for the form.
        name: nil,
        # If `true`, a Moonbase Pages hosted page is enabled for this form, providing a
        # standalone public URL for sharing.
        pages_enabled: nil,
        # Updated redirect URL, or `null` to clear. Omit to leave the existing value
        # unchanged. Liquid template rendered at submission time with form field values
        # under `submission.<key>` (keyed by the field's `key`) plus UTM params
        # (`utm_source`, `utm_medium`, `utm_campaign`, `utm_term`, `utm_content`)
        # automatically appended. Use the `uri_encode` filter for URL-safe values. The
        # rendered URL must parse as a valid URL or the submission errors.
        redirect_url: nil,
        request_options: {}
      )
      end

      # Returns a list of your forms.
      sig do
        params(
          after: String,
          before: String,
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Internal::CursorPage[Moonbase::Form])
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
        # Maximum number of items to return per page. Must be between 1 and 100. Defaults
        # to 20 if not specified.
        limit: nil,
        request_options: {}
      )
      end

      # Permanently deletes a form. The backing collection is preserved.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The ID of the Form to delete.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Moonbase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
