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

def check_slider
  daily_relaxation.move_slider
end

def check_audio
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
  daily_relaxation.scroll_down
  daily_relaxation.check_no_audio
end

def audio_test
  check_slider
  daily_relaxation.click_continue
  yield
  expect(daily_relaxation).to have_audio_modal_visible
  check_audio
  daily_relaxation.click_continue
  expect(daily_relaxation).to have_post_relaxation_rating_page
  check_slider
end

feature 'Participant completes daily relaxation' do
  background do
    participant_1.sign_in
    daily_relaxation.open

    expect(daily_relaxation).to be_visible
  end

  after do
    daily_relaxation.click_submit

    expect(daily_relaxation).to have_home_visible
  end

  scenario 'week 1 audio session' do
    audio_test { daily_relaxation.click_week_1_audio }
  end

  scenario 'week 2a audio session' do
    audio_test { daily_relaxation.click_week_2a_audio }
  end

  scenario 'week 2b audio session' do
    audio_test { daily_relaxation.click_week_2b_audio }
  end

  scenario 'week 3 audio session' do
    audio_test { daily_relaxation.click_week_3_audio }
  end

  scenario 'week 4 audio session' do
    audio_test { daily_relaxation.click_week_4_audio }
  end

  scenario 'week 5 audio session' do
    audio_test { daily_relaxation.click_week_5_audio }
  end

  scenario 'week 6 audio session' do
    audio_test { daily_relaxation.click_week_6_audio }
  end

  scenario 'week 7 audio session' do
    audio_test { daily_relaxation.click_week_7_audio }
  end

  scenario 'week 8 audio session' do
    audio_test { daily_relaxation.click_week_8_audio }
  end

  scenario 'week 9 audio session' do
    audio_test { daily_relaxation.click_week_9_audio }
  end

  scenario 'week 10 audio session' do
    audio_test { daily_relaxation.click_week_10_audio }
  end
end
