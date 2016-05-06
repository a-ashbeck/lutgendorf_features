# filename: ./spec/features/login_spec.rb

require './lib/user.rb'

def participant_1
  @participant_1 ||= Participant.new(
    email: ENV['participant_email'],
    password: ENV['participant_password'],
    ptp_name: ENV['ptp_name']
  )
end

def participant_2
  @participant ||= User.new(
    email: ENV['participant_2_email'],
    password: ENV['participant_2_password']
  )
end

feature 'Participant logs in' do
  scenario 'successfully with participant first name displayed' do
    participant_1.sign_in

    expect(participant_1).to be_signed_in

    expect(participant_1).to have_name_in_welcome
  end

  scenario 'with an incorrect password' do
    participant_1.sign_in_wrong_password

    expect(participant_1).to have_login_page_visible
  end
end
