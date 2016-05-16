# filename: ./lib/web_session.rb

class Participant
  # Page object for Web Session
  class WebSession
    include Capybara::DSL

    def click_web_session
      find('#webex_session').click
    end

    def fill_form_pre_web_session
      find('.row', match: :first)
      emotions = ['anxious', 'sad', 'confused', 'energy', 'fatigue']

      emotions.each do |e|
        find("#group_session_mood_summary_pre_#{e}_#{rand(4)}").click
      end
    end

    def fill_form_post_web_session
      find('.row', match: :first)
      emotions = ['anxious', 'sad', 'confused', 'energy', 'fatigue']

      emotions.each do |e|
        find("#group_session_mood_summary_post_#{e}_#{rand(4)}").click
      end
    end

    def scroll_down
      execute_script('window.scrollBy(0,1500)')
    end

    def click_go_to_web_session
      click_on 'Go to your web session'
    end

    def close_new_tabs
      window = page.driver.browser.window_handles

      if window.size > 1
        page.driver.browser.switch_to.window(window.last)
        page.driver.browser.close
        page.driver.browser.switch_to.window(window.first)
      end

      def has_post_session_questions_visible?
        has_text? 'Please rate your feelings now that your ' \
                  'group session has been completed.'
      end
    end

    def click_continue
      click 'Continue'
    end

    def respond_to_sliders
      
    end

    def click_submit
      click 'Submit'
    end
  end
end
