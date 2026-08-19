# frozen_string_literal: true

module Moonbase
  module Models
    # Where a tagset is available. Associations are discriminated by `type`.
    module TagsetAssociation
      extend Moonbase::Internal::Type::Union

      discriminator :type

      # Makes this tagset available for calls.
      variant :calls, -> { Moonbase::TagsetAssociation::Calls }

      # Makes this tagset available for meetings.
      variant :meetings, -> { Moonbase::TagsetAssociation::Meetings }

      # Makes this tagset available in an inbox.
      variant :inbox, -> { Moonbase::TagsetAssociation::Inbox }

      class Calls < Moonbase::Internal::Type::BaseModel
        # @!attribute type
        #   String representing the association type. Always `calls` for call tagset
        #   associations.
        #
        #   @return [Symbol, :calls]
        required :type, const: :calls

        # @!method initialize(type: :calls)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::TagsetAssociation::Calls} for more details.
        #
        #   Makes this tagset available for calls.
        #
        #   @param type [Symbol, :calls] String representing the association type. Always `calls` for call tagset associa
      end

      class Meetings < Moonbase::Internal::Type::BaseModel
        # @!attribute type
        #   String representing the association type. Always `meetings` for meeting tagset
        #   associations.
        #
        #   @return [Symbol, :meetings]
        required :type, const: :meetings

        # @!method initialize(type: :meetings)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::TagsetAssociation::Meetings} for more details.
        #
        #   Makes this tagset available for meetings.
        #
        #   @param type [Symbol, :meetings] String representing the association type. Always `meetings` for meeting tagset a
      end

      class Inbox < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier of the inbox this tagset is assigned to.
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #   String representing the association type. Always `inbox` for inbox tagset
        #   associations.
        #
        #   @return [Symbol, :inbox]
        required :type, const: :inbox

        # @!method initialize(id:, type: :inbox)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::TagsetAssociation::Inbox} for more details.
        #
        #   Makes this tagset available in an inbox.
        #
        #   @param id [String] Unique identifier of the inbox this tagset is assigned to.
        #
        #   @param type [Symbol, :inbox] String representing the association type. Always `inbox` for inbox tagset associ
      end

      # @!method self.variants
      #   @return [Array(Moonbase::Models::TagsetAssociation::Calls, Moonbase::Models::TagsetAssociation::Meetings, Moonbase::Models::TagsetAssociation::Inbox)]
    end
  end
end
