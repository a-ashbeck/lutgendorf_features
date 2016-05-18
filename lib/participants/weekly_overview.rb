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
      num = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

      num.each do |i|
        find("#lesson-#{i}").click
        yield
      end
    end
  end
end
