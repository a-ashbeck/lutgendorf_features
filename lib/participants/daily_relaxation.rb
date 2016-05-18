# filename: ./lib/daily_relaxation.rb

class Participant
  # Page object for Daily Relaxation
  class DailyRelaxation
    include Capybara::DSL

    def landing_page
      "#{ENV['Base_URL']}/navigator/contexts/daily_relaxation_practice"
    end

    def open
      find('#daily_relaxation_practice').click
    end

    def visible?
      has_text? 'Using the following scale, rate your stress level right ' \
                  'now before you practice your relaxation session'
    end

    def move_slider
      find '#range'
      execute_script("$(\"input#range\").val(#{rand(10)})")
    end

    def click_continue
      click_on 'Continue'
    end

    def click_week_1_audio
      click_on 'Week 1: Deep Breathing & Progressive Muscle Relaxation'
    end

    def click_week_2a_audio
      click_on 'Week 2a'
    end

    def click_week_2b_audio
      click_on 'Week 2b'
    end

    def click_week_3_audio
      click_on 'Week 3: Autogenics'
    end

    def click_week_4_audio
      click_on 'Week 4: Compassion Body Scan'
    end

    def click_week_5_audio
      click_on 'Week 5: River Meditation'
    end

    def click_week_6_audio
      click_on 'Week 6: Mindfulness 1'
    end

    def click_week_7_audio
      click_on 'Week 7: Mindfulness 2'
    end

    def click_week_8_audio
      click_on 'Week 8: Loving Kindness'
    end

    def click_week_9_audio
      click_on 'Week 9: Light Imagery'
    end

    def click_week_10_audio
      click_on 'Week 10: Cove'
    end

    def has_audio_modal_visible?
      has_css?('#modal-window')
    end

    # def listen_to_audio
    #   sleep(0.25)
    # end

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

    def scroll_down
      execute_script('window.scrollBy(0,1500)')
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
