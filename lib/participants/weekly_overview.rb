# filename: ./lib/weekly_overview.rb

module Participants
  # Page object for Weekly Ovierview
  class WeeklyOverview
    include Capybara::DSL

    def click_weekly_overview
      find('h3', text: 'Weekly Overview').click
    end

    def has_slide_visible?
      has_text? 'Title'
    end

    def click_chapter_cycle
      (1..10).each do |i|
        sleep(0.25)
        scroll_down
        find('h3', text: "#{i}. ").click
        yield
      end
    end

    private

    def scroll_down
      execute_script('window.scrollBy(0,15000)')
    end
  end
end
