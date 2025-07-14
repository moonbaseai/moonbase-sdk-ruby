# typed: strong

module MoonbaseSDK
  module Models
    class ProgramTemplateRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            MoonbaseSDK::ProgramTemplateRetrieveParams,
            MoonbaseSDK::Internal::AnyHash
          )
        end

      # Specifies which related objects to include in the response. Valid option is
      # `program`.
      sig do
        returns(
          T.nilable(
            T::Array[
              MoonbaseSDK::ProgramTemplateRetrieveParams::Include::OrSymbol
            ]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include:
            T::Array[
              MoonbaseSDK::ProgramTemplateRetrieveParams::Include::OrSymbol
            ]
        ).void
      end
      attr_writer :include

      sig do
        params(
          include:
            T::Array[
              MoonbaseSDK::ProgramTemplateRetrieveParams::Include::OrSymbol
            ],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies which related objects to include in the response. Valid option is
        # `program`.
        include: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include:
              T::Array[
                MoonbaseSDK::ProgramTemplateRetrieveParams::Include::OrSymbol
              ],
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
            T.all(Symbol, MoonbaseSDK::ProgramTemplateRetrieveParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROGRAM =
          T.let(
            :program,
            MoonbaseSDK::ProgramTemplateRetrieveParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MoonbaseSDK::ProgramTemplateRetrieveParams::Include::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
