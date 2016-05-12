# filename: ./spec/features/daily_relaxation_spec.rb

require './lib/user.rb'
require './lib/participants/daily_relaxation.rb'

def participant_1
  @participant_1 ||= Participant.new(
    email: ENV['participant_email'],
    password: ENV['participant_password'],
    ptp_name: ENV['ptp_name']
  )
end

def daily_relaxation
  @daily_relaxation ||= Participant::DailyRelaxation.new
end

feature 'Participant completes daily relaxation' do
  scenario 'week 1 audio session' do
    participant_1.sign_in
    daily_relaxation.click

    expect(daily_relaxation).to be_visible

    daily_relaxation.move_slider_to_0
    daily_relaxation.click_continue
    daily_relaxation.click_week1_audio
    expect(daily_relaxation).to have_audio_modal_visible
    daily_relaxation.click_play
    daily_relaxation.listen_to_audio
    daily_relaxation.click_mute
    daily_relaxation.listen_to_audio
    daily_relaxation.click_unmute
    daily_relaxation.listen_to_audio
    daily_relaxation.click_stop
    daily_relaxation.listen_to_audio
    daily_relaxation.click_close
    daily_relaxation.listen_to_audio
    daily_relaxation.check_no_audio
    daily_relaxation.listen_to_audio
    daily_relaxation.click_continue
    daily_relaxation.listen_to_audio
    daily_relaxation.move_slider_to_0
    daily_relaxation.click_submit

    expect(daily_relaxation).to have_home_visible
  end
end
