# typed: strong

module Moonbase
  module Models
    class ProgramMessageCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Moonbase::ProgramMessageCreateParams,
            Moonbase::Internal::AnyHash
          )
        end

      # The person to send the message to.
      sig { returns(Moonbase::ProgramMessageCreateParams::Person) }
      attr_reader :person

      sig do
        params(
          person: Moonbase::ProgramMessageCreateParams::Person::OrHash
        ).void
      end
      attr_writer :person

      # The ID of the `ProgramTemplate` to use for sending the message.
      sig { returns(String) }
      attr_accessor :program_template_id

      # Any custom Liquid variables to be interpolated into the message template.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :custom_variables

      sig { params(custom_variables: T::Hash[Symbol, T.anything]).void }
      attr_writer :custom_variables

      sig do
        params(
          person: Moonbase::ProgramMessageCreateParams::Person::OrHash,
          program_template_id: String,
          custom_variables: T::Hash[Symbol, T.anything],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The person to send the message to.
        person:,
        # The ID of the `ProgramTemplate` to use for sending the message.
        program_template_id:,
        # Any custom Liquid variables to be interpolated into the message template.
        custom_variables: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            person: Moonbase::ProgramMessageCreateParams::Person,
            program_template_id: String,
            custom_variables: T::Hash[Symbol, T.anything],
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Person < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::ProgramMessageCreateParams::Person,
              Moonbase::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email

        # The person to send the message to.
        sig { params(email: String).returns(T.attached_class) }
        def self.new(email:)
        end

        sig { override.returns({ email: String }) }
        def to_hash
        end
      end
    end
  end
end
