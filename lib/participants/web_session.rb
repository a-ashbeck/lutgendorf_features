# filename: ./lib/web_session.rb

class Participant
  # Page object for Daily Reflection
  class WebSession
    include Capybara::DSL

    def click_web_session
      find('#webex_session').click
    end

    def fill_form
      # all('radio').map(choose '2')

      # rows = (0..4).map { |i| all('.row')[i] }
      find('.row', match: :first)
      # [0..4].each do |i|
      #   within(all('.row')[i]) { choose '2' }
      # end

      # radios = (0..4).map { |i| all('input', text: '2')[i] }
      # radios.each { |r| choose r }

      emotions = ['anxious', 'sad']

      emotions.each do |e|
        find("#group_session_mood_summary_pre_#{e}_#{rand(4)}").click
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
    end
  end
end
