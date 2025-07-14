# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::MeetingsTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.meetings.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::Meeting
    end

    assert_pattern do
      response => {
        id: String,
        end_at: Time,
        i_cal_uid: String,
        links: MoonbaseSDK::Meeting::Links,
        provider_id: String,
        start_at: Time,
        time_zone: String,
        type: Symbol,
        attendees: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Attendee]) | nil,
        created_at: Time | nil,
        description: String | nil,
        duration: Float | nil,
        location: String | nil,
        organizer: MoonbaseSDK::Organizer | nil,
        provider_uri: String | nil,
        summary_ante: String | nil,
        summary_post: String | nil,
        title: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @moonbase.meetings.list

    assert_pattern do
      response => MoonbaseSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MoonbaseSDK::Meeting
    end

    assert_pattern do
      row => {
        id: String,
        end_at: Time,
        i_cal_uid: String,
        links: MoonbaseSDK::Meeting::Links,
        provider_id: String,
        start_at: Time,
        time_zone: String,
        type: Symbol,
        attendees: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Attendee]) | nil,
        created_at: Time | nil,
        description: String | nil,
        duration: Float | nil,
        location: String | nil,
        organizer: MoonbaseSDK::Organizer | nil,
        provider_uri: String | nil,
        summary_ante: String | nil,
        summary_post: String | nil,
        title: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
