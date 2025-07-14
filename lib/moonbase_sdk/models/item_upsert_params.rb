# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Items#upsert
    class ItemUpsertParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

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
      #   @return [Hash{Symbol=>MoonbaseSDK::Models::SingleLineTextValue, MoonbaseSDK::Models::MultiLineTextValue, MoonbaseSDK::Models::IntegerValue, MoonbaseSDK::Models::FloatValue, MoonbaseSDK::Models::MonetaryValue, MoonbaseSDK::Models::PercentageValue, MoonbaseSDK::Models::BooleanValue, MoonbaseSDK::Models::EmailValue, MoonbaseSDK::Models::URLValue, MoonbaseSDK::Models::DomainValue, MoonbaseSDK::Models::SocialXValue, MoonbaseSDK::Models::SocialLinkedInValue, MoonbaseSDK::Models::TelephoneNumber, MoonbaseSDK::Models::GeoValue, MoonbaseSDK::Models::DateValue, MoonbaseSDK::Models::DatetimeValue, MoonbaseSDK::Models::Choice, MoonbaseSDK::Models::FunnelStep, MoonbaseSDK::Models::RelationValue, Array<MoonbaseSDK::Models::Value>, nil}]
      required :identifiers,
               -> { MoonbaseSDK::Internal::Type::HashOf[union: MoonbaseSDK::FieldValue, nil?: true] }

      # @!attribute values
      #   A hash where keys are the `ref` of a `Field` and values are the data to be set.
      #
      #   @return [Hash{Symbol=>MoonbaseSDK::Models::SingleLineTextValue, MoonbaseSDK::Models::MultiLineTextValue, MoonbaseSDK::Models::IntegerValue, MoonbaseSDK::Models::FloatValue, MoonbaseSDK::Models::MonetaryValue, MoonbaseSDK::Models::PercentageValue, MoonbaseSDK::Models::BooleanValue, MoonbaseSDK::Models::EmailValue, MoonbaseSDK::Models::URLValue, MoonbaseSDK::Models::DomainValue, MoonbaseSDK::Models::SocialXValue, MoonbaseSDK::Models::SocialLinkedInValue, MoonbaseSDK::Models::TelephoneNumber, MoonbaseSDK::Models::GeoValue, MoonbaseSDK::Models::DateValue, MoonbaseSDK::Models::DatetimeValue, MoonbaseSDK::Models::Choice, MoonbaseSDK::Models::FunnelStep, MoonbaseSDK::Models::RelationValue, Array<MoonbaseSDK::Models::Value>, nil}]
      required :values, -> { MoonbaseSDK::Internal::Type::HashOf[union: MoonbaseSDK::FieldValue, nil?: true] }

      # @!attribute update_many_strategy
      #
      #   @return [Symbol, MoonbaseSDK::Models::ItemUpsertParams::UpdateManyStrategy, nil]
      optional :update_many_strategy, enum: -> { MoonbaseSDK::ItemUpsertParams::UpdateManyStrategy }

      # @!attribute update_one_strategy
      #
      #   @return [Symbol, MoonbaseSDK::Models::ItemUpsertParams::UpdateOneStrategy, nil]
      optional :update_one_strategy, enum: -> { MoonbaseSDK::ItemUpsertParams::UpdateOneStrategy }

      # @!method initialize(collection_id:, identifiers:, values:, update_many_strategy: nil, update_one_strategy: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::ItemUpsertParams} for more details.
      #
      #   @param collection_id [String] The ID of the `Collection` to create the item in.
      #
      #   @param identifiers [Hash{Symbol=>MoonbaseSDK::Models::SingleLineTextValue, MoonbaseSDK::Models::MultiLineTextValue, MoonbaseSDK::Models::IntegerValue, MoonbaseSDK::Models::FloatValue, MoonbaseSDK::Models::MonetaryValue, MoonbaseSDK::Models::PercentageValue, MoonbaseSDK::Models::BooleanValue, MoonbaseSDK::Models::EmailValue, MoonbaseSDK::Models::URLValue, MoonbaseSDK::Models::DomainValue, MoonbaseSDK::Models::SocialXValue, MoonbaseSDK::Models::SocialLinkedInValue, MoonbaseSDK::Models::TelephoneNumber, MoonbaseSDK::Models::GeoValue, MoonbaseSDK::Models::DateValue, MoonbaseSDK::Models::DatetimeValue, MoonbaseSDK::Models::Choice, MoonbaseSDK::Models::FunnelStep, MoonbaseSDK::Models::RelationValue, Array<MoonbaseSDK::Models::Value>, nil}] A hash where keys are the `ref` of a `Field` and values are used to identify the
      #
      #   @param values [Hash{Symbol=>MoonbaseSDK::Models::SingleLineTextValue, MoonbaseSDK::Models::MultiLineTextValue, MoonbaseSDK::Models::IntegerValue, MoonbaseSDK::Models::FloatValue, MoonbaseSDK::Models::MonetaryValue, MoonbaseSDK::Models::PercentageValue, MoonbaseSDK::Models::BooleanValue, MoonbaseSDK::Models::EmailValue, MoonbaseSDK::Models::URLValue, MoonbaseSDK::Models::DomainValue, MoonbaseSDK::Models::SocialXValue, MoonbaseSDK::Models::SocialLinkedInValue, MoonbaseSDK::Models::TelephoneNumber, MoonbaseSDK::Models::GeoValue, MoonbaseSDK::Models::DateValue, MoonbaseSDK::Models::DatetimeValue, MoonbaseSDK::Models::Choice, MoonbaseSDK::Models::FunnelStep, MoonbaseSDK::Models::RelationValue, Array<MoonbaseSDK::Models::Value>, nil}] A hash where keys are the `ref` of a `Field` and values are the data to be set.
      #
      #   @param update_many_strategy [Symbol, MoonbaseSDK::Models::ItemUpsertParams::UpdateManyStrategy]
      #
      #   @param update_one_strategy [Symbol, MoonbaseSDK::Models::ItemUpsertParams::UpdateOneStrategy]
      #
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]

      module UpdateManyStrategy
        extend MoonbaseSDK::Internal::Type::Enum

        REPLACE = :replace
        PRESERVE = :preserve
        MERGE = :merge

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module UpdateOneStrategy
        extend MoonbaseSDK::Internal::Type::Enum

        REPLACE = :replace
        PRESERVE = :preserve

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
