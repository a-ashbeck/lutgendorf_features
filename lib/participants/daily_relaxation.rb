# filename: ./lib/daily_relaxation.rb

class Participant
  # Page object for Daily Relaxation
  class DailyRelaxation
    include Capybara::DSL

    def landing_page
      "#{ENV['Base_URL']}/navigator/contexts/daily_relaxation_practice"
    end

    # def open
    # end

    def open
      find('#daily_relaxation_practice').click
    end

    def visible?
      has_text? 'Using the following scale, rate your stress level right ' \
                  'now before you practice your relaxation session'
    end

    def move_slider_to_0
      find '#range'
      execute_script('$("input#range").val(0)')
    end

    def move_slider_to_10
      execute_script('$("input#range").val(10)')
    end

    def move_slider_to_6
      execute_script('$("input#range").val(6)')
    end

    def click_continue
      click_on 'Continue'
    end

    def click_week1_audio
      click_on 'Week 1: Deep Breathing & Progressive Muscle Relaxation'
    end

    def has_audio_modal_visible?
      has_css?('#modal-window')
    end

    def listen_to_audio
      sleep(1)
    end

    def click_play
      click_on 'play'
    end

    def click_stop
      click_on 'stop'
    end

    def click_mute
      click_on 'mute'
    end

    def click_unmute
      click_on 'unmute'
    end

    def click_close
      click_on 'Close'
    end

    def check_no_audio
      check 'Check if you prefer to guide this ' \
              'relaxation session without audio.'
    end

    def has_post_relaxation_rating_page?
      has_text? 'Using the following scale, rate your stress level right ' \
                'now after you have practiced your relaxation session'
    end

    def click_submit
      click_on 'Submit'
    end

    def has_home_visible?
      has_css?('#logo-text')
    end
  end
end
