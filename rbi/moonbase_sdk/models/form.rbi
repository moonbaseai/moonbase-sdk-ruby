# typed: strong

module MoonbaseSDK
  module Models
    class Form < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::Form, MoonbaseSDK::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The `Collection` that submissions to this form are saved to.
      sig { returns(MoonbaseSDK::Collection) }
      attr_reader :collection

      sig { params(collection: MoonbaseSDK::Collection::OrHash).void }
      attr_writer :collection

      sig { returns(MoonbaseSDK::Form::Links) }
      attr_reader :links

      sig { params(links: MoonbaseSDK::Form::Links::OrHash).void }
      attr_writer :links

      # The name of the form, used as the title on its public page.
      sig { returns(String) }
      attr_accessor :name

      # String representing the object’s type. Always `form` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # `true` if the form is available at a public URL.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :pages_enabled

      sig { params(pages_enabled: T::Boolean).void }
      attr_writer :pages_enabled

      # The public URL for the form, if `pages_enabled` is `true`.
      sig { returns(T.nilable(String)) }
      attr_reader :pages_url

      sig { params(pages_url: String).void }
      attr_writer :pages_url

      # An optional URL to redirect users to after a successful submission.
      sig { returns(T.nilable(String)) }
      attr_reader :redirect_url

      sig { params(redirect_url: String).void }
      attr_writer :redirect_url

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # A Form provides a way to create `Items` in a `Collection`, often via a public
      # URL for external users. Each form submission creates a new item.
      sig do
        params(
          id: String,
          collection: MoonbaseSDK::Collection::OrHash,
          links: MoonbaseSDK::Form::Links::OrHash,
          name: String,
          created_at: Time,
          pages_enabled: T::Boolean,
          pages_url: String,
          redirect_url: String,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The `Collection` that submissions to this form are saved to.
        collection:,
        links:,
        # The name of the form, used as the title on its public page.
        name:,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # `true` if the form is available at a public URL.
        pages_enabled: nil,
        # The public URL for the form, if `pages_enabled` is `true`.
        pages_url: nil,
        # An optional URL to redirect users to after a successful submission.
        redirect_url: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # String representing the object’s type. Always `form` for this object.
        type: :form
      )
      end

      sig do
        override.returns(
          {
            id: String,
            collection: MoonbaseSDK::Collection,
            links: MoonbaseSDK::Form::Links,
            name: String,
            type: Symbol,
            created_at: Time,
            pages_enabled: T::Boolean,
            pages_url: String,
            redirect_url: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MoonbaseSDK::Form::Links, MoonbaseSDK::Internal::AnyHash)
          end

        # The canonical URL for this object.
        sig { returns(String) }
        attr_accessor :self_

        # A link to the `Collection` where form submissions are saved.
        sig { returns(T.nilable(String)) }
        attr_reader :collection

        sig { params(collection: String).void }
        attr_writer :collection

        sig do
          params(self_: String, collection: String).returns(T.attached_class)
        end
        def self.new(
          # The canonical URL for this object.
          self_:,
          # A link to the `Collection` where form submissions are saved.
          collection: nil
        )
        end

        sig { override.returns({ self_: String, collection: String }) }
        def to_hash
        end
      end
    end
  end
end
