# filename: ./lib/weekly_overview.rb

class Participant
  # Page object for Weekly Ovierview
  class WeeklyOverview
    include Capybara::DSL

    def click_weekly_overview
      find('#lesson').click
    end

    def click_continue
      click_on 'Continue'
    end

    def click_chapter_1
      find('#lesson-0').click
    end

    def click_chapter_2
      find('#lesson-1').click
    end

    def click_chapter_3
      find('#lesson-2').click
    end

    def click_chapter_4
      find('#lesson-3').click
    end

    def click_chapter_5
      find('#lesson-4').click
    end

    def click_chapter_6
      find('#lesson-5').click
    end

    def click_chapter_7
      find('#lesson-6').click
    end

    def click_chapter_8
      find('#lesson-7').click
    end

    def click_chapter_9
      find('#lesson-8').click
    end

    def click_chapter_10
      find('#lesson-9').click
    end

    def has_slide_visible?
      has_text? 'Title'
    end
  end
end
