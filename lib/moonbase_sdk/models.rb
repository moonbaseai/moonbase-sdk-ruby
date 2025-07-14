# frozen_string_literal: true

module MoonbaseSDK
  [MoonbaseSDK::Internal::Type::BaseModel, *MoonbaseSDK::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, MoonbaseSDK::Internal::AnyHash) } }
  end

  MoonbaseSDK::Internal::Util.walk_namespaces(MoonbaseSDK::Models).each do |mod|
    case mod
    in MoonbaseSDK::Internal::Type::Enum | MoonbaseSDK::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  MoonbaseSDK::Internal::Util.walk_namespaces(MoonbaseSDK::Models)
                             .lazy
                             .grep(MoonbaseSDK::Internal::Type::Union)
                             .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Address = MoonbaseSDK::Models::Address

  Attendee = MoonbaseSDK::Models::Attendee

  BooleanValue = MoonbaseSDK::Models::BooleanValue

  Call = MoonbaseSDK::Models::Call

  CallCreateParams = MoonbaseSDK::Models::CallCreateParams

  Choice = MoonbaseSDK::Models::Choice

  Collection = MoonbaseSDK::Models::Collection

  CollectionListParams = MoonbaseSDK::Models::CollectionListParams

  CollectionRetrieveParams = MoonbaseSDK::Models::CollectionRetrieveParams

  Collections = MoonbaseSDK::Models::Collections

  DatetimeValue = MoonbaseSDK::Models::DatetimeValue

  DateValue = MoonbaseSDK::Models::DateValue

  DomainValue = MoonbaseSDK::Models::DomainValue

  EmailMessage = MoonbaseSDK::Models::EmailMessage

  EmailValue = MoonbaseSDK::Models::EmailValue

  Error = MoonbaseSDK::Models::Error

  Field = MoonbaseSDK::Models::Field

  FieldValue = MoonbaseSDK::Models::FieldValue

  FileListParams = MoonbaseSDK::Models::FileListParams

  FileRetrieveParams = MoonbaseSDK::Models::FileRetrieveParams

  FloatValue = MoonbaseSDK::Models::FloatValue

  FunnelStep = MoonbaseSDK::Models::FunnelStep

  GeoValue = MoonbaseSDK::Models::GeoValue

  Inbox = MoonbaseSDK::Models::Inbox

  InboxConversation = MoonbaseSDK::Models::InboxConversation

  InboxConversationListParams = MoonbaseSDK::Models::InboxConversationListParams

  InboxConversationRetrieveParams = MoonbaseSDK::Models::InboxConversationRetrieveParams

  InboxListParams = MoonbaseSDK::Models::InboxListParams

  InboxMessageListParams = MoonbaseSDK::Models::InboxMessageListParams

  InboxMessageRetrieveParams = MoonbaseSDK::Models::InboxMessageRetrieveParams

  InboxRetrieveParams = MoonbaseSDK::Models::InboxRetrieveParams

  IntegerValue = MoonbaseSDK::Models::IntegerValue

  Item = MoonbaseSDK::Models::Item

  ItemCreateParams = MoonbaseSDK::Models::ItemCreateParams

  ItemDeleteParams = MoonbaseSDK::Models::ItemDeleteParams

  ItemRetrieveParams = MoonbaseSDK::Models::ItemRetrieveParams

  ItemUpdateParams = MoonbaseSDK::Models::ItemUpdateParams

  ItemUpsertParams = MoonbaseSDK::Models::ItemUpsertParams

  Meeting = MoonbaseSDK::Models::Meeting

  MeetingListParams = MoonbaseSDK::Models::MeetingListParams

  MeetingRetrieveParams = MoonbaseSDK::Models::MeetingRetrieveParams

  MonetaryValue = MoonbaseSDK::Models::MonetaryValue

  MoonbaseFile = MoonbaseSDK::Models::MoonbaseFile

  MultiLineTextValue = MoonbaseSDK::Models::MultiLineTextValue

  Note = MoonbaseSDK::Models::Note

  NoteListParams = MoonbaseSDK::Models::NoteListParams

  NoteRetrieveParams = MoonbaseSDK::Models::NoteRetrieveParams

  Organizer = MoonbaseSDK::Models::Organizer

  PercentageValue = MoonbaseSDK::Models::PercentageValue

  Program = MoonbaseSDK::Models::Program

  ProgramListParams = MoonbaseSDK::Models::ProgramListParams

  ProgramMessageSendParams = MoonbaseSDK::Models::ProgramMessageSendParams

  ProgramRetrieveParams = MoonbaseSDK::Models::ProgramRetrieveParams

  ProgramTemplate = MoonbaseSDK::Models::ProgramTemplate

  ProgramTemplateListParams = MoonbaseSDK::Models::ProgramTemplateListParams

  ProgramTemplateRetrieveParams = MoonbaseSDK::Models::ProgramTemplateRetrieveParams

  RelationValue = MoonbaseSDK::Models::RelationValue

  SingleLineTextValue = MoonbaseSDK::Models::SingleLineTextValue

  SocialLinkedInValue = MoonbaseSDK::Models::SocialLinkedInValue

  SocialXValue = MoonbaseSDK::Models::SocialXValue

  Tagset = MoonbaseSDK::Models::Tagset

  TagsetListParams = MoonbaseSDK::Models::TagsetListParams

  TagsetRetrieveParams = MoonbaseSDK::Models::TagsetRetrieveParams

  TelephoneNumber = MoonbaseSDK::Models::TelephoneNumber

  URLValue = MoonbaseSDK::Models::URLValue

  Value = MoonbaseSDK::Models::Value

  View = MoonbaseSDK::Models::View

  ViewListItemsParams = MoonbaseSDK::Models::ViewListItemsParams

  ViewRetrieveParams = MoonbaseSDK::Models::ViewRetrieveParams
end
