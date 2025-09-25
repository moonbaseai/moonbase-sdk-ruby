# typed: strong

module Moonbase
  Activity = Moonbase::Models::Activity

  ActivityCallOccurred = Moonbase::Models::ActivityCallOccurred

  ActivityFormSubmitted = Moonbase::Models::ActivityFormSubmitted

  ActivityInboxMessageSent = Moonbase::Models::ActivityInboxMessageSent

  ActivityItemCreated = Moonbase::Models::ActivityItemCreated

  ActivityItemMentioned = Moonbase::Models::ActivityItemMentioned

  ActivityItemMerged = Moonbase::Models::ActivityItemMerged

  ActivityListParams = Moonbase::Models::ActivityListParams

  ActivityMeetingHeld = Moonbase::Models::ActivityMeetingHeld

  ActivityMeetingScheduled = Moonbase::Models::ActivityMeetingScheduled

  ActivityNoteCreated = Moonbase::Models::ActivityNoteCreated

  ActivityProgramMessageBounced =
    Moonbase::Models::ActivityProgramMessageBounced

  ActivityProgramMessageClicked =
    Moonbase::Models::ActivityProgramMessageClicked

  ActivityProgramMessageComplained =
    Moonbase::Models::ActivityProgramMessageComplained

  ActivityProgramMessageFailed = Moonbase::Models::ActivityProgramMessageFailed

  ActivityProgramMessageOpened = Moonbase::Models::ActivityProgramMessageOpened

  ActivityProgramMessageSent = Moonbase::Models::ActivityProgramMessageSent

  ActivityProgramMessageShielded =
    Moonbase::Models::ActivityProgramMessageShielded

  ActivityProgramMessageUnsubscribed =
    Moonbase::Models::ActivityProgramMessageUnsubscribed

  ActivityRetrieveParams = Moonbase::Models::ActivityRetrieveParams

  Address = Moonbase::Models::Address

  Attendee = Moonbase::Models::Attendee

  BooleanField = Moonbase::Models::BooleanField

  BooleanValue = Moonbase::Models::BooleanValue

  Call = Moonbase::Models::Call

  CallCreateParams = Moonbase::Models::CallCreateParams

  CallUpsertParams = Moonbase::Models::CallUpsertParams

  ChoiceField = Moonbase::Models::ChoiceField

  ChoiceFieldOption = Moonbase::Models::ChoiceFieldOption

  ChoiceValue = Moonbase::Models::ChoiceValue

  ChoiceValueParam = Moonbase::Models::ChoiceValueParam

  Collection = Moonbase::Models::Collection

  CollectionListParams = Moonbase::Models::CollectionListParams

  CollectionPointer = Moonbase::Models::CollectionPointer

  CollectionRetrieveParams = Moonbase::Models::CollectionRetrieveParams

  Collections = Moonbase::Models::Collections

  DateField = Moonbase::Models::DateField

  DatetimeField = Moonbase::Models::DatetimeField

  DatetimeValue = Moonbase::Models::DatetimeValue

  DateValue = Moonbase::Models::DateValue

  DomainField = Moonbase::Models::DomainField

  DomainValue = Moonbase::Models::DomainValue

  EmailField = Moonbase::Models::EmailField

  EmailMessage = Moonbase::Models::EmailMessage

  EmailValue = Moonbase::Models::EmailValue

  Endpoint = Moonbase::Models::Endpoint

  Error = Moonbase::Models::Error

  Field = Moonbase::Models::Field

  FieldValue = Moonbase::Models::FieldValue

  FieldValueParam = Moonbase::Models::FieldValueParam

  FileListParams = Moonbase::Models::FileListParams

  FileRetrieveParams = Moonbase::Models::FileRetrieveParams

  FloatField = Moonbase::Models::FloatField

  FloatValue = Moonbase::Models::FloatValue

  Form = Moonbase::Models::Form

  FormattedText = Moonbase::Models::FormattedText

  FormListParams = Moonbase::Models::FormListParams

  FormRetrieveParams = Moonbase::Models::FormRetrieveParams

  Funnel = Moonbase::Models::Funnel

  FunnelStep = Moonbase::Models::FunnelStep

  FunnelStepValue = Moonbase::Models::FunnelStepValue

  FunnelStepValueParam = Moonbase::Models::FunnelStepValueParam

  GeoField = Moonbase::Models::GeoField

  GeoValue = Moonbase::Models::GeoValue

  Inbox = Moonbase::Models::Inbox

  InboxConversation = Moonbase::Models::InboxConversation

  InboxConversationListParams = Moonbase::Models::InboxConversationListParams

  InboxConversationRetrieveParams =
    Moonbase::Models::InboxConversationRetrieveParams

  InboxListParams = Moonbase::Models::InboxListParams

  InboxMessageListParams = Moonbase::Models::InboxMessageListParams

  InboxMessageRetrieveParams = Moonbase::Models::InboxMessageRetrieveParams

  InboxRetrieveParams = Moonbase::Models::InboxRetrieveParams

  IntegerField = Moonbase::Models::IntegerField

  IntegerValue = Moonbase::Models::IntegerValue

  Item = Moonbase::Models::Item

  ItemPointer = Moonbase::Models::ItemPointer

  Meeting = Moonbase::Models::Meeting

  MeetingListParams = Moonbase::Models::MeetingListParams

  MeetingRetrieveParams = Moonbase::Models::MeetingRetrieveParams

  MeetingUpdateParams = Moonbase::Models::MeetingUpdateParams

  MonetaryField = Moonbase::Models::MonetaryField

  MonetaryValue = Moonbase::Models::MonetaryValue

  MoonbaseFile = Moonbase::Models::MoonbaseFile

  MultiLineTextField = Moonbase::Models::MultiLineTextField

  MultiLineTextValue = Moonbase::Models::MultiLineTextValue

  Note = Moonbase::Models::Note

  NoteListParams = Moonbase::Models::NoteListParams

  NoteRetrieveParams = Moonbase::Models::NoteRetrieveParams

  Organizer = Moonbase::Models::Organizer

  PercentageField = Moonbase::Models::PercentageField

  PercentageValue = Moonbase::Models::PercentageValue

  Pointer = Moonbase::Models::Pointer

  Program = Moonbase::Models::Program

  ProgramListParams = Moonbase::Models::ProgramListParams

  ProgramMessage = Moonbase::Models::ProgramMessage

  ProgramMessageSendParams = Moonbase::Models::ProgramMessageSendParams

  ProgramRetrieveParams = Moonbase::Models::ProgramRetrieveParams

  ProgramTemplate = Moonbase::Models::ProgramTemplate

  ProgramTemplateListParams = Moonbase::Models::ProgramTemplateListParams

  ProgramTemplateRetrieveParams =
    Moonbase::Models::ProgramTemplateRetrieveParams

  RelationField = Moonbase::Models::RelationField

  RelationValue = Moonbase::Models::RelationValue

  RelationValueParam = Moonbase::Models::RelationValueParam

  SingleLineTextField = Moonbase::Models::SingleLineTextField

  SingleLineTextValue = Moonbase::Models::SingleLineTextValue

  SocialLinkedInField = Moonbase::Models::SocialLinkedInField

  SocialLinkedInValue = Moonbase::Models::SocialLinkedInValue

  SocialXField = Moonbase::Models::SocialXField

  SocialXValue = Moonbase::Models::SocialXValue

  StageField = Moonbase::Models::StageField

  Subscription = Moonbase::Models::Subscription

  Tagset = Moonbase::Models::Tagset

  TagsetListParams = Moonbase::Models::TagsetListParams

  TagsetRetrieveParams = Moonbase::Models::TagsetRetrieveParams

  TelephoneNumber = Moonbase::Models::TelephoneNumber

  TelephoneNumberField = Moonbase::Models::TelephoneNumberField

  URLField = Moonbase::Models::URLField

  URLValue = Moonbase::Models::URLValue

  Value = Moonbase::Models::Value

  ValueParam = Moonbase::Models::ValueParam

  View = Moonbase::Models::View

  ViewRetrieveParams = Moonbase::Models::ViewRetrieveParams

  Views = Moonbase::Models::Views

  WebhookEndpointCreateParams = Moonbase::Models::WebhookEndpointCreateParams

  WebhookEndpointDeleteParams = Moonbase::Models::WebhookEndpointDeleteParams

  WebhookEndpointListParams = Moonbase::Models::WebhookEndpointListParams

  WebhookEndpointRetrieveParams =
    Moonbase::Models::WebhookEndpointRetrieveParams

  WebhookEndpointUpdateParams = Moonbase::Models::WebhookEndpointUpdateParams
end
