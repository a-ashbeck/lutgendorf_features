# filename: ./spec/features/daily_reflection_spec.rb

require './lib/user.rb'
require './lib/participants/daily_reflection.rb'

def participant_1
  @participant_1 ||= Participant.new(
    email: ENV['participant_email'],
    password: ENV['participant_password'],
    ptp_name: ENV['ptp_name']
  )
end

def daily_reflection
  @daily_reflection ||= Participants::DailyReflection.new
end

feature 'Participant selects daily reflection' do
  before do
    participant_1.sign_in
    daily_reflection.open
  end

  scenario "and completes today's reflection" do
    daily_reflection.click_todays_reflection

    expect(daily_reflection).to have_todays_reflection_page_visible

    daily_reflection.fill_text_box_with_jibberish
    participant_1.click_submit

    expect(participant_1).to have_home_visible
  end

  scenario 'and views previous reflections' do
    daily_reflection.click_past_reflections

    expect(daily_reflection).to have_past_reflections_page_visible

    daily_reflection.click_back_button
    daily_reflection.click_past_reflections

    expect(daily_reflection).to have_past_reflections_page_visible

    participant_1.scroll_down

    expect(daily_reflection).to have_yesterdays_entry_visible

    daily_reflection.click_yesterdays_entry
    participant_1.scroll_down

    expect(daily_reflection).to have_content_in_yesterdays_entry
  end
end
