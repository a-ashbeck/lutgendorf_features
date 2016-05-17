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
    sleep(0.5)
    web_session.scroll_down
    web_session.fill_form_pre_web_session
    web_session.scroll_down
    web_session.click_go_to_web_session
    web_session.close_new_tabs

    # expect(web_session).to have_post_session_questions_visible

    # web_session.fill_form_post_web_session
    # web_session.scroll_down
    # web_session.click_continue
    # web_session.respond_to_sliders
    # web_session.scroll_down
    # web_session.click_continue
    # web_session.respond_to_sliders
    # web_session.scroll_down
    # web_session.click_submit
    web_session.click_home_icon

    expect(web_session).to have_home_visible
  end
end
