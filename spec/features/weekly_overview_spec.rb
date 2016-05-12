# filename: ./spec/features/weekly_overview_spec.rb

require './lib/user.rb'
require './lib/participants/weekly_overview.rb'

def participant_1
  @participant_1 ||= Participant.new(
    email: ENV['participant_email'],
    password: ENV['participant_password'],
    ptp_name: ENV['ptp_name']
  )
end

def weekly_overview
  @weekly_overview ||= Participant::WeeklyOverview.new
end

feature 'Participant selects weekly overview' do
  scenario 'and completes chapter 1' do
    participant_1.sign_in
    weekly_overview.click_weekly_overview

    expect(weekly_overview).to have_weekly_overview_visible

    weekly_overview.click_chapter_1

    expect(weekly_overview).to have_chapter_1_page_1_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_1_page_2_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_1_page_3_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_1_page_4_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_weekly_overview_visible
  end

  scenario 'and completes chapter 2' do
    participant_1.sign_in
    weekly_overview.click_weekly_overview

    expect(weekly_overview).to have_weekly_overview_visible

    weekly_overview.click_chapter_2

    expect(weekly_overview).to have_chapter_2_page_1_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_2_page_2_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_2_page_3_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_2_page_4_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_2_page_5_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_weekly_overview_visible
  end

  scenario 'and completes chapter 3' do
    participant_1.sign_in
    weekly_overview.click_weekly_overview

    expect(weekly_overview).to have_weekly_overview_visible

    weekly_overview.click_chapter_3

    expect(weekly_overview).to have_chapter_3_page_1_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_3_page_2_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_3_page_3_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_3_page_4_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_3_page_5_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_weekly_overview_visible
  end

  scenario 'and completes chapter 4' do
    participant_1.sign_in
    weekly_overview.click_weekly_overview

    expect(weekly_overview).to have_weekly_overview_visible

    weekly_overview.click_chapter_4

    expect(weekly_overview).to have_chapter_4_page_1_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_4_page_2_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_4_page_3_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_4_page_4_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_4_page_5_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_weekly_overview_visible
  end

  scenario 'and completes chapter 5' do
    participant_1.sign_in
    weekly_overview.click_weekly_overview

    expect(weekly_overview).to have_weekly_overview_visible

    weekly_overview.click_chapter_5

    expect(weekly_overview).to have_chapter_5_page_1_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_5_page_2_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_5_page_3_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_5_page_4_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_5_page_5_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_weekly_overview_visible
  end

  scenario 'and completes chapter 6' do
    participant_1.sign_in
    weekly_overview.click_weekly_overview

    expect(weekly_overview).to have_weekly_overview_visible

    weekly_overview.click_chapter_6

    expect(weekly_overview).to have_chapter_6_page_1_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_6_page_2_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_6_page_3_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_6_page_4_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_6_page_5_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_weekly_overview_visible
  end

  scenario 'and completes chapter 7' do
    participant_1.sign_in
    weekly_overview.click_weekly_overview

    expect(weekly_overview).to have_weekly_overview_visible

    weekly_overview.click_chapter_7

    expect(weekly_overview).to have_chapter_7_page_1_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_7_page_2_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_7_page_3_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_7_page_4_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_7_page_5_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_weekly_overview_visible
  end

  scenario 'and completes chapter 8' do
    participant_1.sign_in
    weekly_overview.click_weekly_overview

    expect(weekly_overview).to have_weekly_overview_visible

    weekly_overview.click_chapter_8

    expect(weekly_overview).to have_chapter_8_page_1_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_8_page_2_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_8_page_3_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_8_page_4_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_weekly_overview_visible
  end

  scenario 'and completes chapter 9' do
    participant_1.sign_in
    weekly_overview.click_weekly_overview

    expect(weekly_overview).to have_weekly_overview_visible

    weekly_overview.click_chapter_9

    expect(weekly_overview).to have_chapter_9_page_1_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_9_page_2_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_9_page_3_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_9_page_4_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_9_page_5_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_weekly_overview_visible
  end

  scenario 'and completes chapter 10' do
    participant_1.sign_in
    weekly_overview.click_weekly_overview

    expect(weekly_overview).to have_weekly_overview_visible

    weekly_overview.click_chapter_10

    expect(weekly_overview).to have_chapter_10_page_10_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_10_page_2_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_10_page_3_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_chapter_10_page_4_visble

    weekly_overview.click_continue

    expect(weekly_overview).to have_weekly_overview_visible
  end
end
