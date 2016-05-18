# filename: ./lib/users.rb

# Page object for participant
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

  def click_home_icon
    find('#home_nav').click
  end

  def has_home_visible?
    has_text? "Welcome, #{@ptp_name}"
  end

  def click_submit
    click_on 'Submit'
  end

  def click_continue
    click_on 'Continue'
  end

  def scroll_down
    execute_script('window.scrollBy(0,1500)')
  end
end
