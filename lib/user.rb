# filename: ./lib/users.rb

class Participant
  include Capybara::DSL

  def initialize(participant)
    @email ||= participant[:email]
    @password ||= participant[:password]
    @ptp_name ||= participant[:ptp_name]
  end

  def login_page
    ENV['Base_URL']
  end

  def has_login_page_visible?
    has_text? 'Please enter your username and password to get started'
  end

  def sign_in
    visit login_page
    fill_in 'Email', with: @email
    fill_in 'Password', with: @password
    click_on 'Sign in'
  end

  def sign_out
    click_on 'Sign Out'
  end

  def sign_in_wrong_password
    visit login_page
    fill_in 'Email', with: @email
    fill_in 'Password', with: 'fakepassword'
  end

  def has_home_visible?
    has_text? "Welcome, #{@ptp_name}"
  end
end
