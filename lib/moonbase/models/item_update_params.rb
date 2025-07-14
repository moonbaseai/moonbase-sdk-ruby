# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Items#update
    class ItemUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute values
      #   A hash where keys are the `ref` of a `Field` and values are the new data to be
      #   set.
      #
      #   @return [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::Choice, Moonbase::Models::FunnelStep, Moonbase::Models::RelationValue, Array<Moonbase::Models::Value>}]
      required :values, -> { Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue] }

      # @!attribute update_many_strategy
      #
      #   @return [Symbol, Moonbase::Models::ItemUpdateParams::UpdateManyStrategy, nil]
      optional :update_many_strategy, enum: -> { Moonbase::ItemUpdateParams::UpdateManyStrategy }

      # @!attribute update_one_strategy
      #
      #   @return [Symbol, Moonbase::Models::ItemUpdateParams::UpdateOneStrategy, nil]
      optional :update_one_strategy, enum: -> { Moonbase::ItemUpdateParams::UpdateOneStrategy }

      # @!method initialize(values:, update_many_strategy: nil, update_one_strategy: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ItemUpdateParams} for more details.
      #
      #   @param values [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::Choice, Moonbase::Models::FunnelStep, Moonbase::Models::RelationValue, Array<Moonbase::Models::Value>}] A hash where keys are the `ref` of a `Field` and values are the new data to be s
      #
      #   @param update_many_strategy [Symbol, Moonbase::Models::ItemUpdateParams::UpdateManyStrategy]
      #
      #   @param update_one_strategy [Symbol, Moonbase::Models::ItemUpdateParams::UpdateOneStrategy]
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      module UpdateManyStrategy
        extend Moonbase::Internal::Type::Enum

        REPLACE = :replace
        PRESERVE = :preserve
        MERGE = :merge

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module UpdateOneStrategy
        extend Moonbase::Internal::Type::Enum

        REPLACE = :replace
        PRESERVE = :preserve

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
