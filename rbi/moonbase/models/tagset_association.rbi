# typed: strong

module Moonbase
  module Models
    # Where a tagset is available. Associations are discriminated by `type`.
    module TagsetAssociation
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Moonbase::TagsetAssociation::Calls,
            Moonbase::TagsetAssociation::Meetings,
            Moonbase::TagsetAssociation::Inbox
          )
        end

      class Calls < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::TagsetAssociation::Calls,
              Moonbase::Internal::AnyHash
            )
          end

        # String representing the association type. Always `calls` for call tagset
        # associations.
        sig { returns(Symbol) }
        attr_accessor :type

        # Makes this tagset available for calls.
        sig { params(type: Symbol).returns(T.attached_class) }
        def self.new(
          # String representing the association type. Always `calls` for call tagset
          # associations.
          type: :calls
        )
        end

        sig { override.returns({ type: Symbol }) }
        def to_hash
        end
      end

      class Meetings < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::TagsetAssociation::Meetings,
              Moonbase::Internal::AnyHash
            )
          end

        # String representing the association type. Always `meetings` for meeting tagset
        # associations.
        sig { returns(Symbol) }
        attr_accessor :type

        # Makes this tagset available for meetings.
        sig { params(type: Symbol).returns(T.attached_class) }
        def self.new(
          # String representing the association type. Always `meetings` for meeting tagset
          # associations.
          type: :meetings
        )
        end

        sig { override.returns({ type: Symbol }) }
        def to_hash
        end
      end

      class Inbox < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::TagsetAssociation::Inbox,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier of the inbox this tagset is assigned to.
        sig { returns(String) }
        attr_accessor :id

        # String representing the association type. Always `inbox` for inbox tagset
        # associations.
        sig { returns(Symbol) }
        attr_accessor :type

        # Makes this tagset available in an inbox.
        sig { params(id: String, type: Symbol).returns(T.attached_class) }
        def self.new(
          # Unique identifier of the inbox this tagset is assigned to.
          id:,
          # String representing the association type. Always `inbox` for inbox tagset
          # associations.
          type: :inbox
        )
        end

        sig { override.returns({ id: String, type: Symbol }) }
        def to_hash
        end
      end

      sig { override.returns(T::Array[Moonbase::TagsetAssociation::Variants]) }
      def self.variants
      end
    end
  end
end
