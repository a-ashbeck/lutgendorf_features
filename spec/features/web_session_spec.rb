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
    # How to fill in mulltiple radio buttons?
    web_session.fill_form
    web_session.click_go_to_web_session

  end
end
