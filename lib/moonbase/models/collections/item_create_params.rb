# frozen_string_literal: true

module Moonbase
  module Models
    module Collections
      # @see Moonbase::Resources::Collections::Items#create
      class ItemCreateParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        # @!attribute values
        #   A hash where keys are the `ref` of a `Field` and values are the data to be set.
        #
        #   @return [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::FieldValueParam::SocialXValueParam, Moonbase::Models::FieldValueParam::SocialLinkedInValueParam, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam, Array<Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::ValueParam::ValueUriSocialX, Moonbase::Models::ValueParam::ValueUriSocialLinkedIn, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam>, nil}]
        required :values, -> { Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValueParam, nil?: true] }

        # @!method initialize(values:, request_options: {})
        #   @param values [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::FieldValueParam::SocialXValueParam, Moonbase::Models::FieldValueParam::SocialLinkedInValueParam, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam, Array<Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::ValueParam::ValueUriSocialX, Moonbase::Models::ValueParam::ValueUriSocialLinkedIn, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam>, nil}] A hash where keys are the `ref` of a `Field` and values are the data to be set.
        #
        #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
