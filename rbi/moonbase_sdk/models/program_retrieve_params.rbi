# typed: strong

module MoonbaseSDK
  module Models
    class ProgramRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            MoonbaseSDK::ProgramRetrieveParams,
            MoonbaseSDK::Internal::AnyHash
          )
        end

      # Specifies which related objects to include in the response. Valid options are
      # `activity_metrics` and `program_template`.
      sig do
        returns(
          T.nilable(
            T::Array[MoonbaseSDK::ProgramRetrieveParams::Include::OrSymbol]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include:
            T::Array[MoonbaseSDK::ProgramRetrieveParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      sig do
        params(
          include:
            T::Array[MoonbaseSDK::ProgramRetrieveParams::Include::OrSymbol],
          request_options: MoonbaseSDK::RequestOptions::OrHash
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
              T::Array[MoonbaseSDK::ProgramRetrieveParams::Include::OrSymbol],
            request_options: MoonbaseSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Include
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MoonbaseSDK::ProgramRetrieveParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVITY_METRICS =
          T.let(
            :activity_metrics,
            MoonbaseSDK::ProgramRetrieveParams::Include::TaggedSymbol
          )
        PROGRAM_TEMPLATE =
          T.let(
            :program_template,
            MoonbaseSDK::ProgramRetrieveParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[MoonbaseSDK::ProgramRetrieveParams::Include::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
