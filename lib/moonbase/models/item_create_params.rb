# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Items#create
    class ItemCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute collection_id
      #   The ID of the `Collection` to create the item in.
      #
      #   @return [String]
      required :collection_id, String

      # @!attribute values
      #   A hash where keys are the `ref` of a `Field` and values are the data to be set.
      #
      #   @return [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::Choice, Moonbase::Models::FunnelStep, Moonbase::Models::RelationValue, Array<Moonbase::Models::Value>}]
      required :values, -> { Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue] }

      # @!method initialize(collection_id:, values:, request_options: {})
      #   @param collection_id [String] The ID of the `Collection` to create the item in.
      #
      #   @param values [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::Choice, Moonbase::Models::FunnelStep, Moonbase::Models::RelationValue, Array<Moonbase::Models::Value>}] A hash where keys are the `ref` of a `Field` and values are the data to be set.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
