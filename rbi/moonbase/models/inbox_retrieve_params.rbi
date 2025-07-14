# typed: strong

module Moonbase
  module Models
    class InboxRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::InboxRetrieveParams, Moonbase::Internal::AnyHash)
        end

      # Specifies which related objects to include in the response. Valid option is
      # `tagset`.
      sig do
        returns(T.nilable(Moonbase::InboxRetrieveParams::Include::OrSymbol))
      end
      attr_reader :include

      sig do
        params(include: Moonbase::InboxRetrieveParams::Include::OrSymbol).void
      end
      attr_writer :include

      sig do
        params(
          include: Moonbase::InboxRetrieveParams::Include::OrSymbol,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies which related objects to include in the response. Valid option is
        # `tagset`.
        include: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include: Moonbase::InboxRetrieveParams::Include::OrSymbol,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Specifies which related objects to include in the response. Valid option is
      # `tagset`.
      module Include
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::InboxRetrieveParams::Include) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TAGSET =
          T.let(:tagset, Moonbase::InboxRetrieveParams::Include::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::InboxRetrieveParams::Include::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
