# frozen_string_literal: true

module Moonbase
  module Models
    class Error < Moonbase::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, :error]
      required :type, const: :error

      # @!attribute id
      #   A unique identifier for this specific error instance.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute code
      #   An application-specific error code string.
      #
      #   @return [String, nil]
      optional :code, String

      # @!attribute detail
      #   A human-readable explanation of this specific error.
      #
      #   @return [String, nil]
      optional :detail, String

      # @!attribute source
      #   An object containing more specific information about the part of the request
      #   that caused the error.
      #
      #   @return [Moonbase::Models::Error::Source, nil]
      optional :source, -> { Moonbase::Error::Source }

      # @!attribute status
      #   The HTTP status code for this problem, as a string.
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute title
      #   A short, human-readable summary of the problem.
      #
      #   @return [String, nil]
      optional :title, String

      # @!method initialize(id: nil, code: nil, detail: nil, source: nil, status: nil, title: nil, type: :error)
      #   Some parameter documentations has been truncated, see {Moonbase::Models::Error}
      #   for more details.
      #
      #   @param id [String] A unique identifier for this specific error instance.
      #
      #   @param code [String] An application-specific error code string.
      #
      #   @param detail [String] A human-readable explanation of this specific error.
      #
      #   @param source [Moonbase::Models::Error::Source] An object containing more specific information about the part of the request tha
      #
      #   @param status [String] The HTTP status code for this problem, as a string.
      #
      #   @param title [String] A short, human-readable summary of the problem.
      #
      #   @param type [Symbol, :error]

      # @see Moonbase::Models::Error#source
      class Source < Moonbase::Internal::Type::BaseModel
        # @!attribute parameter
        #   A string indicating which URI query parameter caused the error.
        #
        #   @return [String, nil]
        optional :parameter, String

        # @!attribute pointer
        #   A JSON Pointer [RFC6901] to the associated entity in the request document.
        #
        #   @return [String, nil]
        optional :pointer, String

        # @!method initialize(parameter: nil, pointer: nil)
        #   An object containing more specific information about the part of the request
        #   that caused the error.
        #
        #   @param parameter [String] A string indicating which URI query parameter caused the error.
        #
        #   @param pointer [String] A JSON Pointer [RFC6901] to the associated entity in the request document.
      end
    end
  end
end
