# typed: strong

module Moonbase
  module Models
    class FormListResponse < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::Models::FormListResponse, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Boolean) }
      attr_accessor :business_email_required

      # A lightweight reference to a `Collection`, containing the minimal information
      # needed to identify it.
      sig { returns(Moonbase::CollectionPointer) }
      attr_reader :collection

      sig { params(collection: Moonbase::CollectionPointer::OrHash).void }
      attr_writer :collection

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Boolean) }
      attr_accessor :pages_enabled

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_reader :pages_url

      sig { params(pages_url: String).void }
      attr_writer :pages_url

      sig { returns(T.nilable(String)) }
      attr_reader :redirect_url

      sig { params(redirect_url: String).void }
      attr_writer :redirect_url

      # Information about the most essential attributes of a Form (does not include the
      # embed HTML).
      sig do
        params(
          id: String,
          business_email_required: T::Boolean,
          collection: Moonbase::CollectionPointer::OrHash,
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
        id:,
        business_email_required:,
        # A lightweight reference to a `Collection`, containing the minimal information
        # needed to identify it.
        collection:,
        created_at:,
        name:,
        pages_enabled:,
        updated_at:,
        pages_url: nil,
        redirect_url: nil,
        type: :form
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_email_required: T::Boolean,
            collection: Moonbase::CollectionPointer,
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
