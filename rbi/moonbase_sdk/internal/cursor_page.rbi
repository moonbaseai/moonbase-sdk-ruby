# typed: strong

module MoonbaseSDK
  module Internal
    class CursorPage
      include MoonbaseSDK::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(Meta) }
      attr_accessor :meta

      # @api private
      sig { returns(String) }
      def inspect
      end

      class Meta < MoonbaseSDK::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Meta, MoonbaseSDK::Internal::AnyHash) }

        sig { returns(T.nilable(Meta::Cursor)) }
        attr_reader :cursor

        sig { params(cursor: Meta::Cursor::OrHash).void }
        attr_writer :cursor

        sig { params(cursor: Meta::Cursor::OrHash).returns(T.attached_class) }
        def self.new(cursor: nil)
        end

        sig { override.returns({ cursor: Meta::Cursor }) }
        def to_hash
        end

        class Cursor < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(Meta::Cursor, MoonbaseSDK::Internal::AnyHash) }

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
