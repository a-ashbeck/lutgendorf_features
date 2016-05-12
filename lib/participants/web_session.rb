# filename: ./lib/web_session.rb

class Participant
  # Page object for Daily Reflection
  class WebSession
    include Capybara::DSL

    def click_web_session
      find('#webex_session').click
    end

    def fill_form
      all('radio').map(choose '2')
    end

    def click_go_to_web_session
      click_on 'Go to your web session'
    end
  end
end
