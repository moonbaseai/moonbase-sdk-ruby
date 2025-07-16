# typed: strong

module MoonbaseSDK
  module Models
    class Choice < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::Choice, MoonbaseSDK::Internal::AnyHash)
        end

      sig { returns(MoonbaseSDK::Choice::Option) }
      attr_reader :option

      sig { params(option: MoonbaseSDK::Choice::Option::OrHash).void }
      attr_writer :option

      sig { returns(Symbol) }
      attr_accessor :type

      # Selected choice option
      sig do
        params(
          option: MoonbaseSDK::Choice::Option::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(option:, type: :"value/choice")
      end

      sig do
        override.returns({ option: MoonbaseSDK::Choice::Option, type: Symbol })
      end
      def to_hash
      end

      class Option < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MoonbaseSDK::Choice::Option, MoonbaseSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        sig do
          params(id: String, label: String, type: Symbol).returns(
            T.attached_class
          )
        end
        def self.new(id:, label: nil, type: :field_option)
        end

        sig { override.returns({ id: String, type: Symbol, label: String }) }
        def to_hash
        end
      end
    end
  end
end
