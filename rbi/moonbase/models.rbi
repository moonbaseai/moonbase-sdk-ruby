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

  AgentSettingRetrieveParams = Moonbase::Models::AgentSettingRetrieveParams

  AgentSettingUpdateParams = Moonbase::Models::AgentSettingUpdateParams

  Attendee = Moonbase::Models::Attendee

  BooleanField = Moonbase::Models::BooleanField

  BooleanValue = Moonbase::Models::BooleanValue

  Call = Moonbase::Models::Call

  CallCreateParams = Moonbase::Models::CallCreateParams

  CallListParams = Moonbase::Models::CallListParams

  CallParticipant = Moonbase::Models::CallParticipant

  CallPointer = Moonbase::Models::CallPointer

  CallRetrieveParams = Moonbase::Models::CallRetrieveParams

  CallTranscript = Moonbase::Models::CallTranscript

  CallTranscriptCue = Moonbase::Models::CallTranscriptCue

  CallTranscriptSpeaker = Moonbase::Models::CallTranscriptSpeaker

  CallUpsertParams = Moonbase::Models::CallUpsertParams

  ChoiceField = Moonbase::Models::ChoiceField

  ChoiceFieldOption = Moonbase::Models::ChoiceFieldOption

  ChoiceFieldOptionPointer = Moonbase::Models::ChoiceFieldOptionPointer

  ChoiceValue = Moonbase::Models::ChoiceValue

  ChoiceValueParam = Moonbase::Models::ChoiceValueParam

  ClientSearchParams = Moonbase::Models::ClientSearchParams

  Collection = Moonbase::Models::Collection

  CollectionCreateParams = Moonbase::Models::CollectionCreateParams

  CollectionListParams = Moonbase::Models::CollectionListParams

  CollectionPointer = Moonbase::Models::CollectionPointer

  CollectionRetrieveParams = Moonbase::Models::CollectionRetrieveParams

  Collections = Moonbase::Models::Collections

  CollectionUpdateParams = Moonbase::Models::CollectionUpdateParams

  Constituent = Moonbase::Models::Constituent

  ConstituentEntityPointer = Moonbase::Models::ConstituentEntityPointer

  CurrentDate = Moonbase::Models::CurrentDate

  CurrentDatetime = Moonbase::Models::CurrentDatetime

  CurrentMember = Moonbase::Models::CurrentMember

  DateField = Moonbase::Models::DateField

  DateFieldDefaultValueParam = Moonbase::Models::DateFieldDefaultValueParam

  DatetimeField = Moonbase::Models::DatetimeField

  DatetimeFieldDefaultValueParam =
    Moonbase::Models::DatetimeFieldDefaultValueParam

  DatetimeValue = Moonbase::Models::DatetimeValue

  DateValue = Moonbase::Models::DateValue

  DomainField = Moonbase::Models::DomainField

  DomainValue = Moonbase::Models::DomainValue

  EmailField = Moonbase::Models::EmailField

  EmailMessage = Moonbase::Models::EmailMessage

  EmailMessageAddressParams = Moonbase::Models::EmailMessageAddressParams

  EmailMessagePointer = Moonbase::Models::EmailMessagePointer

  EmailValue = Moonbase::Models::EmailValue

  Endpoint = Moonbase::Models::Endpoint

  Error = Moonbase::Models::Error

  Field = Moonbase::Models::Field

  FieldDefaultValue = Moonbase::Models::FieldDefaultValue

  FieldPointer = Moonbase::Models::FieldPointer

  FieldValue = Moonbase::Models::FieldValue

  FieldValueParam = Moonbase::Models::FieldValueParam

  FileDeleteParams = Moonbase::Models::FileDeleteParams

  FileListParams = Moonbase::Models::FileListParams

  FilePointer = Moonbase::Models::FilePointer

  FileRetrieveParams = Moonbase::Models::FileRetrieveParams

  FileUploadParams = Moonbase::Models::FileUploadParams

  FloatField = Moonbase::Models::FloatField

  FloatValue = Moonbase::Models::FloatValue

  Form = Moonbase::Models::Form

  FormattedText = Moonbase::Models::FormattedText

  FormCreateParams = Moonbase::Models::FormCreateParams

  FormDeleteParams = Moonbase::Models::FormDeleteParams

  FormListParams = Moonbase::Models::FormListParams

  FormRetrieveParams = Moonbase::Models::FormRetrieveParams

  FormUpdateParams = Moonbase::Models::FormUpdateParams

  Funnel = Moonbase::Models::Funnel

  FunnelCreateParams = Moonbase::Models::FunnelCreateParams

  FunnelDeleteParams = Moonbase::Models::FunnelDeleteParams

  FunnelListParams = Moonbase::Models::FunnelListParams

  FunnelPointerParam = Moonbase::Models::FunnelPointerParam

  FunnelRetrieveParams = Moonbase::Models::FunnelRetrieveParams

  FunnelStep = Moonbase::Models::FunnelStep

  FunnelStepPointer = Moonbase::Models::FunnelStepPointer

  FunnelStepValue = Moonbase::Models::FunnelStepValue

  FunnelStepValueParam = Moonbase::Models::FunnelStepValueParam

  FunnelUpdateParams = Moonbase::Models::FunnelUpdateParams

  GeoField = Moonbase::Models::GeoField

  GeoValue = Moonbase::Models::GeoValue

  IdentifierField = Moonbase::Models::IdentifierField

  IdentifierValue = Moonbase::Models::IdentifierValue

  Inbox = Moonbase::Models::Inbox

  InboxConversation = Moonbase::Models::InboxConversation

  InboxConversationListParams = Moonbase::Models::InboxConversationListParams

  InboxConversationRetrieveParams =
    Moonbase::Models::InboxConversationRetrieveParams

  InboxListParams = Moonbase::Models::InboxListParams

  InboxMessageCreateParams = Moonbase::Models::InboxMessageCreateParams

  InboxMessageDeleteParams = Moonbase::Models::InboxMessageDeleteParams

  InboxMessageListParams = Moonbase::Models::InboxMessageListParams

  InboxMessageRetrieveParams = Moonbase::Models::InboxMessageRetrieveParams

  InboxMessages = Moonbase::Models::InboxMessages

  InboxMessageUpdateParams = Moonbase::Models::InboxMessageUpdateParams

  InboxRetrieveParams = Moonbase::Models::InboxRetrieveParams

  IntegerField = Moonbase::Models::IntegerField

  IntegerValue = Moonbase::Models::IntegerValue

  Item = Moonbase::Models::Item

  ItemPointer = Moonbase::Models::ItemPointer

  ItemPointerParam = Moonbase::Models::ItemPointerParam

  ItemsFilter = Moonbase::Models::ItemsFilter

  ItemsFilterAndGroup = Moonbase::Models::ItemsFilterAndGroup

  ItemsFilterNotGroup = Moonbase::Models::ItemsFilterNotGroup

  ItemsFilterOrGroup = Moonbase::Models::ItemsFilterOrGroup

  ItemsFilterValueExists = Moonbase::Models::ItemsFilterValueExists

  ItemsFilterValueMatches = Moonbase::Models::ItemsFilterValueMatches

  Meeting = Moonbase::Models::Meeting

  MeetingListParams = Moonbase::Models::MeetingListParams

  MeetingPointer = Moonbase::Models::MeetingPointer

  MeetingRetrieveParams = Moonbase::Models::MeetingRetrieveParams

  MeetingTranscript = Moonbase::Models::MeetingTranscript

  MeetingTranscriptCue = Moonbase::Models::MeetingTranscriptCue

  MeetingTranscriptSpeaker = Moonbase::Models::MeetingTranscriptSpeaker

  MeetingUpdateParams = Moonbase::Models::MeetingUpdateParams

  MessageAttachment = Moonbase::Models::MessageAttachment

  MessageAttachmentCreateParams =
    Moonbase::Models::MessageAttachmentCreateParams

  MonetaryField = Moonbase::Models::MonetaryField

  MonetaryValue = Moonbase::Models::MonetaryValue

  MoonbaseFile = Moonbase::Models::MoonbaseFile

  MultiLineTextField = Moonbase::Models::MultiLineTextField

  MultiLineTextValue = Moonbase::Models::MultiLineTextValue

  Note = Moonbase::Models::Note

  NoteAssociationParamPointer = Moonbase::Models::NoteAssociationParamPointer

  NoteAssociationPointer = Moonbase::Models::NoteAssociationPointer

  NoteCreateParams = Moonbase::Models::NoteCreateParams

  NoteDeleteParams = Moonbase::Models::NoteDeleteParams

  NoteListParams = Moonbase::Models::NoteListParams

  NotePointer = Moonbase::Models::NotePointer

  NoteRetrieveParams = Moonbase::Models::NoteRetrieveParams

  NoteUpdateParams = Moonbase::Models::NoteUpdateParams

  Organizer = Moonbase::Models::Organizer

  PercentageField = Moonbase::Models::PercentageField

  PercentageValue = Moonbase::Models::PercentageValue

  Program = Moonbase::Models::Program

  ProgramActivityMetrics = Moonbase::Models::ProgramActivityMetrics

  ProgramListParams = Moonbase::Models::ProgramListParams

  ProgramMessage = Moonbase::Models::ProgramMessage

  ProgramMessagePointer = Moonbase::Models::ProgramMessagePointer

  ProgramMessageSendParams = Moonbase::Models::ProgramMessageSendParams

  ProgramPointer = Moonbase::Models::ProgramPointer

  ProgramRetrieveParams = Moonbase::Models::ProgramRetrieveParams

  ProgramTemplate = Moonbase::Models::ProgramTemplate

  ProgramTemplateListParams = Moonbase::Models::ProgramTemplateListParams

  ProgramTemplatePointer = Moonbase::Models::ProgramTemplatePointer

  ProgramTemplateRetrieveParams =
    Moonbase::Models::ProgramTemplateRetrieveParams

  RelationField = Moonbase::Models::RelationField

  RelationFieldDefaultValueParam =
    Moonbase::Models::RelationFieldDefaultValueParam

  RelationValue = Moonbase::Models::RelationValue

  RelationValueParam = Moonbase::Models::RelationValueParam

  SingleLineTextField = Moonbase::Models::SingleLineTextField

  SingleLineTextValue = Moonbase::Models::SingleLineTextValue

  SocialLinkedInField = Moonbase::Models::SocialLinkedInField

  SocialLinkedInValue = Moonbase::Models::SocialLinkedInValue

  SocialLinkedInValueParam = Moonbase::Models::SocialLinkedInValueParam

  SocialProfileLinkedInParam = Moonbase::Models::SocialProfileLinkedInParam

  SocialProfileXParam = Moonbase::Models::SocialProfileXParam

  SocialXField = Moonbase::Models::SocialXField

  SocialXValue = Moonbase::Models::SocialXValue

  SocialXValueParam = Moonbase::Models::SocialXValueParam

  StageField = Moonbase::Models::StageField

  StageFieldCreateParams = Moonbase::Models::StageFieldCreateParams

  StageFieldUpdateParams = Moonbase::Models::StageFieldUpdateParams

  Subscription = Moonbase::Models::Subscription

  Tag = Moonbase::Models::Tag

  TagPointerParam = Moonbase::Models::TagPointerParam

  Tagset = Moonbase::Models::Tagset

  TagsetCreateParams = Moonbase::Models::TagsetCreateParams

  TagsetDeleteParams = Moonbase::Models::TagsetDeleteParams

  TagsetListParams = Moonbase::Models::TagsetListParams

  TagsetPointer = Moonbase::Models::TagsetPointer

  TagsetRetrieveParams = Moonbase::Models::TagsetRetrieveParams

  TagsetUpdateParams = Moonbase::Models::TagsetUpdateParams

  TelephoneNumber = Moonbase::Models::TelephoneNumber

  TelephoneNumberField = Moonbase::Models::TelephoneNumberField

  Unsubscribe = Moonbase::Models::Unsubscribe

  UnsubscribeCreateParams = Moonbase::Models::UnsubscribeCreateParams

  UnsubscribeDeleteParams = Moonbase::Models::UnsubscribeDeleteParams

  UnsubscribeListParams = Moonbase::Models::UnsubscribeListParams

  UnsubscribePointer = Moonbase::Models::UnsubscribePointer

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
