# typed: strong

module Moonbase
  module Models
    class ProgramRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::ProgramRetrieveParams, Moonbase::Internal::AnyHash)
        end

      # Specifies which related objects to include in the response. Valid options are
      # `activity_metrics` and `program_template`.
      sig do
        returns(
          T.nilable(
            T::Array[Moonbase::ProgramRetrieveParams::Include::OrSymbol]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include: T::Array[Moonbase::ProgramRetrieveParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      sig do
        params(
          include: T::Array[Moonbase::ProgramRetrieveParams::Include::OrSymbol],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies which related objects to include in the response. Valid options are
        # `activity_metrics` and `program_template`.
        include: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include:
              T::Array[Moonbase::ProgramRetrieveParams::Include::OrSymbol],
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Include
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Moonbase::ProgramRetrieveParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVITY_METRICS =
          T.let(
            :activity_metrics,
            Moonbase::ProgramRetrieveParams::Include::TaggedSymbol
          )
        PROGRAM_TEMPLATE =
          T.let(
            :program_template,
            Moonbase::ProgramRetrieveParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Moonbase::ProgramRetrieveParams::Include::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
