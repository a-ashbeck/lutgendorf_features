# filename: ./lib/daily_reflection.rb

module Participants
  # Page object for Daily Reflection
  class DailyReflection
    include Capybara::DSL

    def open
      find('h3', text: 'Daily Reflection').click
    end

    def click_todays_reflection
      find('a', text: 'Today\'s Reflections').click
    end

    def click_past_reflections
      find('a', text: 'Past Reflections').click
    end

    def has_todays_reflection_page_visible?
      has_text? 'Describe a meaningful moment:'
    end

    def has_past_reflections_page_visible?
      has_text? 'Previous Reflections'
    end

    def fill_text_box_with_jibberish
      fill_in 'daily_journal[meaningful_text]',
              with: 'sd;flkgj;dlkjhkhjgkjhgkslfkjg;ds gjdlfskjgnlskdfg ' \
                    'dlkjfasdvcskjhglhjkhgvkhjgddlskcsdlafhsldkjfhsldfdsk' \
                    'hdfhdoiv djhbljkhlhjgkjhgsfklasdjhf asdlfkjsadhfw 438r' \
                    'dlkjfasdvclkjhljkhbljkhglhjsddlskcsdlafhsldkjfhsldfdsk' \
                    'hdfhdoiv dsfljh lh h jhkklasdjhf asdlfkjsadhfw 438r' \
                    'dlkjfasdvcsljkhljkhljkbddlskcsdlafhsldkjfhsldfdsk' \
                    'hdfhdoiv dsuiooiuljfklasdjhf asdlfkjsadhfw 438r' \
                    'dlkjfasdvcsljkhlkjhlkjhljkhlddlskcsdlafhsldkjfhsldfdsk' \
                    'hdfhdoiv dsliuljkhlkjhlkjhfklasdjhf asdlfkjsadhfw 438r' \
                    'dlkjfasdvc              sddlskcsdlafhsldkjfhsldfdsk' \
                    'hdfhdoiv dsfklasdjhflkjhljkhlkjh asdlfkjsadhfw 438r' \
                    'dlkjfasdvcsddlskcsdlaflkjhlkjhlkjhljlhsldkjfhsldfdsk' \
                    'hdfhdoiv dsfklasdjhf hgkjgkjhgasdlfkjsadhfw 438r' \
                    'dlkjfasdvcsddlskcsdlalkjhlkjhljhlfhsldkjfhsldfdsk' \
                    'hdfhdoiv dsfklaskjhglkjkhljkhlkjdjhf asdlfkjsadhfw 438r' \
                    'dlkjfasdvcsddlskjhkhjgkjhgkjhgkhgkcsdlafhsldkjfhsldfdsk' \
                    'hdfhdoiv dsfklasdlkjh lkjh lkjhjhf asdlfkjsadhfw 438r' \
                    'dlkjfasdvcsddlslkjh lkjh ljkh lj kcsdlafhsldkjfhsldfdsk' \
                    'hdfhdoiv dsfklasdjhf hgkjgkjhgasdlfkjsadhfw 438r' \
                    'hdfhdoiv dsfklasdjhf hgkjgkjhgasdlfkjsadhfw 438r' \
                    'hdfhdoiv dsfklasdjhf hgkjgkjhgasdlfkjsadhfw 438r' \
                    'hdfhdoiv dsfklasdjlkjh lkjh lkj lhf asdlfkjsadhfw 438r' \
                    'dlkjfasdvcsddlskcslkj hlkj h      dlafhsldkjfhsldfdsk' \
                    'hdfhdoiv dsfklasdjhlkjh lkjh ljh f asdlfkjsadhfw 438r' \
    end

    def click_back_button
      find('.fa-4x').click
    end

    def has_yesterdays_entry_visible?
      has_css?('a', text: (Date.today - 1).strftime('%B %d, %Y'))
    end

    def click_yesterdays_entry
      find('a', text: (Date.today - 1).strftime('%B %d, %Y')).click
    end

    def has_content_in_yesterdays_entry?
      has_text? 'Meaningful Moment: test1'
    end
  end
end
