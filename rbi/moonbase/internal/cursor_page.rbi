# typed: strong

module Moonbase
  module Internal
    class CursorPage
      include Moonbase::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(Meta) }
      attr_accessor :meta

      # @api private
      sig { returns(String) }
      def inspect
      end

      class Meta < Moonbase::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Meta, Moonbase::Internal::AnyHash) }

        sig { returns(T.nilable(Meta::Cursors)) }
        attr_reader :cursors

        sig { params(cursors: Meta::Cursors::OrHash).void }
        attr_writer :cursors

        sig { params(cursors: Meta::Cursors::OrHash).returns(T.attached_class) }
        def self.new(cursors: nil)
        end

        sig { override.returns({ cursors: Meta::Cursors }) }
        def to_hash
        end

        class Cursors < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(Meta::Cursors, Moonbase::Internal::AnyHash) }

          sig { returns(T.nilable(String)) }
          attr_reader :next_

          sig { params(next_: String).void }
          attr_writer :next_

          sig { params(next_: String).returns(T.attached_class) }
          def self.new(next_: nil)
          end

          sig { override.returns({ next_: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
