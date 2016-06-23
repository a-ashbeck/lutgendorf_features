# filename: ./lib/daily_relaxation.rb

module Participants
  # Page object for Daily Relaxation
  class DailyRelaxation
    include Capybara::DSL

    def landing_page
      "#{ENV['Base_URL']}/navigator/contexts/daily_relaxation_practice"
    end

    def open
      find('h3', text: 'Daily Relaxation').click
    end

    def visible?
      has_text? 'Using the following scale, rate your stress level right ' \
                  'now before you practice your relaxation session'
    end

    def move_slider
      find '#range'
      execute_script("$(\"input#range\").val(#{rand(10)})")
    end

    def custom_click(link)
      if ENV['driver'] == 'poltergeist'
        find('a', text: link).trigger('click')
      else
        click_on link
      end
    end

    def click_week_1_audio
      custom_click 'Week 1: Deep Breathing & Progressive Muscle Relaxation'
    end

    def click_week_2a_audio
      custom_click 'Week 2a'
    end

    def click_week_2b_audio
      custom_click 'Week 2b'
    end

    def click_week_3_audio
      custom_click 'Week 3: Autogenics'
    end

    def click_week_4_audio
      custom_click 'Week 4: Compassion Body Scan'
    end

    def click_week_5_audio
      custom_click 'Week 5: River Meditation'
    end

    def click_week_6_audio
      custom_click 'Week 6: Mindfulness 1'
    end

    def click_week_7_audio
      custom_click 'Week 7: Mindfulness 2'
    end

    def click_week_8_audio
      custom_click 'Week 8: Loving Kindness'
    end

    def click_week_9_audio
      custom_click 'Week 9: Light Imagery'
    end

    def click_week_10_audio
      custom_click 'Week 10: Cove'
    end

    def has_audio_modal_visible?
      has_css?('#modal-window')
    end

    def click_play
      special_click 'play'
    end

    def click_stop
      special_click 'stop'
    end

    def click_mute
      special_click 'mute'
    end

    def click_unmute
      special_click 'unmute' 
    end

    def special_click(link)
      tries ||= 2
      click_on link
    rescue Capybara::ElementNotFound
      execute_script('location.reload()')
      retry unless(tries -= 1).zero?
    end

    def click_close
      special_click 'Close'
    end

    def check_no_audio
      if ENV['driver'] == 'poltergeist'
        find('#listening_self_guided').trigger('click')
      else
        check 'Check if you prefer to guide this ' \
              'relaxation session without audio.'
      end
    end

    def has_post_relaxation_rating_page?
      has_text? 'Using the following scale, rate your stress level right ' \
                'now after you have practiced your relaxation session'
    end
  end
end
