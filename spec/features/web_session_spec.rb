# filename: ./spec/features/web_session_spec.rb

require './lib/user.rb'
require './lib/participants/web_session.rb'

def participant_1
  @participant_1 ||= Participant.new(
    email: ENV['participant_email'],
    password: ENV['participant_password'],
    ptp_name: ENV['ptp_name']
  )
end

def web_session
  @web_session ||= Participant::WebSession.new
end

feature 'Participant selects web session' do
  scenario 'and completes session 1' do
    participant_1.sign_in
    web_session.click_web_session
    sleep(0.1)
    participant_1.scroll_down
    web_session.fill_form_pre_web_session
    web_session.click_go_to_web_session
    web_session.close_new_tabs
    participant_1.click_home_icon

    expect(participant_1).to have_home_visible
  end
end
