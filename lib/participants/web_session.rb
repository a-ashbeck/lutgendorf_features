# filename: ./lib/web_session.rb

module Participants
  # Page object for Web Session
  class WebSession
    include Capybara::DSL

    def click_web_session
      find('h3', text: 'Web Session').click
    end

    def fill_form_pre_web_session
      find('.row', match: :first)
      emotions = ['anxious', 'sad', 'confused', 'energy', 'fatigue']

      emotions.each do |e|
        find("#group_session_mood_summary_pre_#{e}_#{rand(4)}").click
      end
    end

    def click_go_to_web_session
      click_on 'Go to your web session'
    end

    def has_web_session_form_visible?
      has_text? 'Please rate your feelings before your group session. ' \
                'When you are done, you will be directed to your web meeting.'
    end

    def close_new_tabs
      window = page.driver.browser.window_handles

      if window.size > 1
        page.driver.browser.switch_to.window(window.last)
        page.driver.browser.close
        page.driver.browser.switch_to.window(window.first)
      end
    end
  end
end
