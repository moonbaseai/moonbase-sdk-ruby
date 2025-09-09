# frozen_string_literal: true

module Moonbase
  module Models
    module Collections
      # @see Moonbase::Resources::Collections::Items#update
      class ItemUpdateParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        # @!attribute collection_id
        #
        #   @return [String]
        required :collection_id, String

        # @!attribute values
        #   A hash where keys are the `ref` of a `Field` and values are the new data to be
        #   set.
        #
        #   @return [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::FieldValueParam::SocialXValueParam, Moonbase::Models::FieldValueParam::SocialLinkedInValueParam, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam, Array<Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::ValueParam::ValueUriSocialX, Moonbase::Models::ValueParam::ValueUriSocialLinkedIn, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam>, nil}]
        required :values, -> { Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValueParam, nil?: true] }

        # @!attribute update_many_strategy
        #
        #   @return [Symbol, Moonbase::Models::Collections::ItemUpdateParams::UpdateManyStrategy, nil]
        optional :update_many_strategy, enum: -> { Moonbase::Collections::ItemUpdateParams::UpdateManyStrategy }

        # @!attribute update_one_strategy
        #
        #   @return [Symbol, Moonbase::Models::Collections::ItemUpdateParams::UpdateOneStrategy, nil]
        optional :update_one_strategy, enum: -> { Moonbase::Collections::ItemUpdateParams::UpdateOneStrategy }

        # @!method initialize(collection_id:, values:, update_many_strategy: nil, update_one_strategy: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::Collections::ItemUpdateParams} for more details.
        #
        #   @param collection_id [String]
        #
        #   @param values [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::FieldValueParam::SocialXValueParam, Moonbase::Models::FieldValueParam::SocialLinkedInValueParam, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam, Array<Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::ValueParam::ValueUriSocialX, Moonbase::Models::ValueParam::ValueUriSocialLinkedIn, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam>, nil}] A hash where keys are the `ref` of a `Field` and values are the new data to be s
        #
        #   @param update_many_strategy [Symbol, Moonbase::Models::Collections::ItemUpdateParams::UpdateManyStrategy]
        #
        #   @param update_one_strategy [Symbol, Moonbase::Models::Collections::ItemUpdateParams::UpdateOneStrategy]
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
end
