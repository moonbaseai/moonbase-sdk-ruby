# typed: strong

module Moonbase
  module Models
    class Form < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Form, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The `Collection` that submissions to this form are saved to.
      sig { returns(Moonbase::Collection) }
      attr_reader :collection

      sig { params(collection: Moonbase::Collection::OrHash).void }
      attr_writer :collection

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The name of the form, used as the title on its public page.
      sig { returns(String) }
      attr_accessor :name

      # `true` if the form is available at a public URL.
      sig { returns(T::Boolean) }
      attr_accessor :pages_enabled

      # String representing the object’s type. Always `form` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

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

      # A Form provides a way to create `Items` in a `Collection`, often via a public
      # URL for external users. Each form submission creates a new item.
      sig do
        params(
          id: String,
          collection: Moonbase::Collection::OrHash,
          created_at: Time,
          name: String,
          pages_enabled: T::Boolean,
          updated_at: Time,
          pages_url: String,
          redirect_url: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The `Collection` that submissions to this form are saved to.
        collection:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # The name of the form, used as the title on its public page.
        name:,
        # `true` if the form is available at a public URL.
        pages_enabled:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # The public URL for the form, if `pages_enabled` is `true`.
        pages_url: nil,
        # An optional URL to redirect users to after a successful submission.
        redirect_url: nil,
        # String representing the object’s type. Always `form` for this object.
        type: :form
      )
      end

      sig do
        override.returns(
          {
            id: String,
            collection: Moonbase::Collection,
            created_at: Time,
            name: String,
            pages_enabled: T::Boolean,
            type: Symbol,
            updated_at: Time,
            pages_url: String,
            redirect_url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
