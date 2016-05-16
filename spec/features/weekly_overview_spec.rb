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

def check_slides
  expect(weekly_overview).to have_slide_visible

  weekly_overview.click_continue

  expect(weekly_overview).to have_slide_visible

  weekly_overview.click_continue
end

feature 'Participant selects weekly overview' do
  scenario 'and completes all chapter slideshows' do
    participant_1.sign_in
    weekly_overview.click_weekly_overview
    weekly_overview.click_chapter_1
    check_slides
    weekly_overview.click_chapter_2
    check_slides
    weekly_overview.click_chapter_3
    check_slides
    weekly_overview.click_chapter_4
    check_slides
    weekly_overview.click_chapter_5
    check_slides
    weekly_overview.click_chapter_6
    check_slides
    weekly_overview.click_chapter_7
    check_slides
    weekly_overview.click_chapter_8
    check_slides
    weekly_overview.click_chapter_9
    check_slides
    weekly_overview.click_chapter_10
    check_slides
  end
end
