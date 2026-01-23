# typed: strong

module Moonbase
  module Models
    class Error < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Error, Moonbase::Internal::AnyHash) }

      sig { returns(Symbol) }
      attr_accessor :type

      # A unique identifier for this specific error instance.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # An application-specific error code string.
      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      # A human-readable explanation of this specific error.
      sig { returns(T.nilable(String)) }
      attr_reader :detail

      sig { params(detail: String).void }
      attr_writer :detail

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :meta

      sig { params(meta: T::Hash[Symbol, T.anything]).void }
      attr_writer :meta

      # An object containing more specific information about the part of the request
      # that caused the error.
      sig { returns(T.nilable(Moonbase::Error::Source)) }
      attr_reader :source

      sig { params(source: Moonbase::Error::Source::OrHash).void }
      attr_writer :source

      # The HTTP status code for this problem, as a string.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # A short, human-readable summary of the problem.
      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      # The Error object represents a single error that occurred during API request
      # processing. It provides detailed information about what went wrong, including a
      # unique identifier, status code, and human-readable descriptions to help
      # developers understand and resolve the issue.
      sig do
        params(
          id: String,
          code: String,
          detail: String,
          meta: T::Hash[Symbol, T.anything],
          source: Moonbase::Error::Source::OrHash,
          status: String,
          title: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for this specific error instance.
        id: nil,
        # An application-specific error code string.
        code: nil,
        # A human-readable explanation of this specific error.
        detail: nil,
        meta: nil,
        # An object containing more specific information about the part of the request
        # that caused the error.
        source: nil,
        # The HTTP status code for this problem, as a string.
        status: nil,
        # A short, human-readable summary of the problem.
        title: nil,
        type: :error
      )
      end

      sig do
        override.returns(
          {
            type: Symbol,
            id: String,
            code: String,
            detail: String,
            meta: T::Hash[Symbol, T.anything],
            source: Moonbase::Error::Source,
            status: String,
            title: String
          }
        )
      end
      def to_hash
      end

      class Source < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Error::Source, Moonbase::Internal::AnyHash)
          end

        # A string indicating which URI query parameter caused the error.
        sig { returns(T.nilable(String)) }
        attr_reader :parameter

        sig { params(parameter: String).void }
        attr_writer :parameter

        # A JSON Pointer [RFC6901] to the associated entity in the request document.
        sig { returns(T.nilable(String)) }
        attr_reader :pointer

        sig { params(pointer: String).void }
        attr_writer :pointer

        # An object containing more specific information about the part of the request
        # that caused the error.
        sig do
          params(parameter: String, pointer: String).returns(T.attached_class)
        end
        def self.new(
          # A string indicating which URI query parameter caused the error.
          parameter: nil,
          # A JSON Pointer [RFC6901] to the associated entity in the request document.
          pointer: nil
        )
        end

        sig { override.returns({ parameter: String, pointer: String }) }
        def to_hash
        end
      end
    end
  end
end
