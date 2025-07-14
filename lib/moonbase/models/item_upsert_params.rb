# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Items#upsert
    class ItemUpsertParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute collection_id
      #   The ID of the `Collection` to create the item in.
      #
      #   @return [String]
      required :collection_id, String

      # @!attribute identifiers
      #   A hash where keys are the `ref` of a `Field` and values are used to identify the
      #   item to update. When multiple identifiers are provided, the update will find
      #   items that match any of the identifiers.
      #
      #   @return [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::Choice, Moonbase::Models::FunnelStep, Moonbase::Models::RelationValue, Array<Moonbase::Models::Value>, nil}]
      required :identifiers, -> { Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue, nil?: true] }

      # @!attribute values
      #   A hash where keys are the `ref` of a `Field` and values are the data to be set.
      #
      #   @return [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::Choice, Moonbase::Models::FunnelStep, Moonbase::Models::RelationValue, Array<Moonbase::Models::Value>, nil}]
      required :values, -> { Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue, nil?: true] }

      # @!attribute update_many_strategy
      #
      #   @return [Symbol, Moonbase::Models::ItemUpsertParams::UpdateManyStrategy, nil]
      optional :update_many_strategy, enum: -> { Moonbase::ItemUpsertParams::UpdateManyStrategy }

      # @!attribute update_one_strategy
      #
      #   @return [Symbol, Moonbase::Models::ItemUpsertParams::UpdateOneStrategy, nil]
      optional :update_one_strategy, enum: -> { Moonbase::ItemUpsertParams::UpdateOneStrategy }

      # @!method initialize(collection_id:, identifiers:, values:, update_many_strategy: nil, update_one_strategy: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ItemUpsertParams} for more details.
      #
      #   @param collection_id [String] The ID of the `Collection` to create the item in.
      #
      #   @param identifiers [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::Choice, Moonbase::Models::FunnelStep, Moonbase::Models::RelationValue, Array<Moonbase::Models::Value>, nil}] A hash where keys are the `ref` of a `Field` and values are used to identify the
      #
      #   @param values [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::Choice, Moonbase::Models::FunnelStep, Moonbase::Models::RelationValue, Array<Moonbase::Models::Value>, nil}] A hash where keys are the `ref` of a `Field` and values are the data to be set.
      #
      #   @param update_many_strategy [Symbol, Moonbase::Models::ItemUpsertParams::UpdateManyStrategy]
      #
      #   @param update_one_strategy [Symbol, Moonbase::Models::ItemUpsertParams::UpdateOneStrategy]
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
