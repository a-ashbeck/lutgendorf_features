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
  @daily_relaxation ||= Participants::DailyRelaxation.new
end

def check_audio
  daily_relaxation.click_play
  daily_relaxation.click_mute
  daily_relaxation.click_unmute
  daily_relaxation.click_stop
end

def audio_test
  yield

  expect(daily_relaxation).to have_audio_modal_visible

  check_audio
  daily_relaxation.click_close
end

feature 'Participant completes daily relaxation' do
  scenario 'week 1 audio session' do
    participant_1.sign_in
    daily_relaxation.open

    expect(daily_relaxation).to be_visible

    daily_relaxation.move_slider
    participant_1.click_continue
    audio_test { daily_relaxation.click_week_1_audio }
    audio_test { daily_relaxation.click_week_2a_audio }
    audio_test { daily_relaxation.click_week_2b_audio }
    audio_test { daily_relaxation.click_week_3_audio }
    audio_test { daily_relaxation.click_week_4_audio }
    audio_test { daily_relaxation.click_week_5_audio }
    audio_test { daily_relaxation.click_week_6_audio }
    audio_test { daily_relaxation.click_week_7_audio }
    audio_test { daily_relaxation.click_week_8_audio }
    audio_test { daily_relaxation.click_week_9_audio }
    audio_test { daily_relaxation.click_week_10_audio }
    participant_1.scroll_down
    daily_relaxation.check_no_audio
    participant_1.click_continue

    expect(daily_relaxation).to have_post_relaxation_rating_page

    daily_relaxation.move_slider
    participant_1.click_submit
    participant_1.click_home_icon

    expect(participant_1).to have_home_visible
  end
end
