# filename: ./lib/weekly_overview.rb

class Participant
  # Page object for Weekly Ovierview
  class WeeklyOverview
    include Capybara::DSL

    def click_weekly_overview
      find('#lesson').click
    end

    def has_slide_visible?
      has_text? 'Title'
    end

    def click_chapter_cycle
      (0..9).each do |i|
        find("#lesson-#{i}").click
        yield
      end
    end
  end
end
