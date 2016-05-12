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
  @daily_reflection ||= Participant::DailyReflection.new
end

feature "Participant selects daily reflection" do
  scenario "and completes today's reflection" do
    participant_1.sign_in
    daily_reflection.click
    daily_reflection.click_todays_reflection

    expect(daily_reflection).to have_todays_reflection_page_visible

    daily_reflection.fill_text_box_with_jibberish
    daily_reflection.click_submit

    expect(daily_reflection).to have_home_visble
  end

  scenario "and views previous reflections" do
    participant_1.sign_in
    daily_reflection.click
    daily_reflection.click_todays_reflection

    expect(daily_reflection).to have_past_reflections_page_visible

    daily_reflection.click_back_button
    daily_reflection.click_todays_reflection

    expect(daily_reflection).to have_past_reflections_page_visible

    
  end
end
