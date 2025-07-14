# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Items#create
    class ItemCreateParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!attribute collection_id
      #   The ID of the `Collection` to create the item in.
      #
      #   @return [String]
      required :collection_id, String

      # @!attribute values
      #   A hash where keys are the `ref` of a `Field` and values are the data to be set.
      #
      #   @return [Hash{Symbol=>MoonbaseSDK::Models::SingleLineTextValue, MoonbaseSDK::Models::MultiLineTextValue, MoonbaseSDK::Models::IntegerValue, MoonbaseSDK::Models::FloatValue, MoonbaseSDK::Models::MonetaryValue, MoonbaseSDK::Models::PercentageValue, MoonbaseSDK::Models::BooleanValue, MoonbaseSDK::Models::EmailValue, MoonbaseSDK::Models::URLValue, MoonbaseSDK::Models::DomainValue, MoonbaseSDK::Models::SocialXValue, MoonbaseSDK::Models::SocialLinkedInValue, MoonbaseSDK::Models::TelephoneNumber, MoonbaseSDK::Models::GeoValue, MoonbaseSDK::Models::DateValue, MoonbaseSDK::Models::DatetimeValue, MoonbaseSDK::Models::Choice, MoonbaseSDK::Models::FunnelStep, MoonbaseSDK::Models::RelationValue, Array<MoonbaseSDK::Models::Value>, nil}]
      required :values, -> { MoonbaseSDK::Internal::Type::HashOf[union: MoonbaseSDK::FieldValue, nil?: true] }

      # @!method initialize(collection_id:, values:, request_options: {})
      #   @param collection_id [String] The ID of the `Collection` to create the item in.
      #
      #   @param values [Hash{Symbol=>MoonbaseSDK::Models::SingleLineTextValue, MoonbaseSDK::Models::MultiLineTextValue, MoonbaseSDK::Models::IntegerValue, MoonbaseSDK::Models::FloatValue, MoonbaseSDK::Models::MonetaryValue, MoonbaseSDK::Models::PercentageValue, MoonbaseSDK::Models::BooleanValue, MoonbaseSDK::Models::EmailValue, MoonbaseSDK::Models::URLValue, MoonbaseSDK::Models::DomainValue, MoonbaseSDK::Models::SocialXValue, MoonbaseSDK::Models::SocialLinkedInValue, MoonbaseSDK::Models::TelephoneNumber, MoonbaseSDK::Models::GeoValue, MoonbaseSDK::Models::DateValue, MoonbaseSDK::Models::DatetimeValue, MoonbaseSDK::Models::Choice, MoonbaseSDK::Models::FunnelStep, MoonbaseSDK::Models::RelationValue, Array<MoonbaseSDK::Models::Value>, nil}] A hash where keys are the `ref` of a `Field` and values are the data to be set.
      #
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
