# typed: strong

module Moonbase
  module Models
    class Choice < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Choice, Moonbase::Internal::AnyHash) }

      sig { returns(Moonbase::Choice::Option) }
      attr_reader :option

      sig { params(option: Moonbase::Choice::Option::OrHash).void }
      attr_writer :option

      sig { returns(Symbol) }
      attr_accessor :type

      # Selected choice option
      sig do
        params(option: Moonbase::Choice::Option::OrHash, type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(option:, type: :"value/choice")
      end

      sig do
        override.returns({ option: Moonbase::Choice::Option, type: Symbol })
      end
      def to_hash
      end

      class Option < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Choice::Option, Moonbase::Internal::AnyHash)
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
