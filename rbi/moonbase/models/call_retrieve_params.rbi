# typed: strong

module Moonbase
  module Models
    class CallRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::CallRetrieveParams, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Specifies which related objects to include in the response. Valid options are
      # `transcript`, `note`, and `summary`.
      sig do
        returns(
          T.nilable(T::Array[Moonbase::CallRetrieveParams::Include::OrSymbol])
        )
      end
      attr_reader :include

      sig do
        params(
          include: T::Array[Moonbase::CallRetrieveParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      sig do
        params(
          id: String,
          include: T::Array[Moonbase::CallRetrieveParams::Include::OrSymbol],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Specifies which related objects to include in the response. Valid options are
        # `transcript`, `note`, and `summary`.
        include: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            include: T::Array[Moonbase::CallRetrieveParams::Include::OrSymbol],
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Include
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::CallRetrieveParams::Include) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSCRIPT =
          T.let(
            :transcript,
            Moonbase::CallRetrieveParams::Include::TaggedSymbol
          )
        NOTE = T.let(:note, Moonbase::CallRetrieveParams::Include::TaggedSymbol)
        SUMMARY =
          T.let(:summary, Moonbase::CallRetrieveParams::Include::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::CallRetrieveParams::Include::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
