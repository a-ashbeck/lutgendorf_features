# filename: ./lib/daily_reflection.rb

class Participant
  # Page object for Daily Reflection
  class DailyReflection
    include Capybara::DSL

    def open
      find('#daily_journal').click
    end

    # Issue with getting this to run
    def click_todays_reflection
      find('a', text: 'Today\'s Reflections').click
    end

    # Issue with getting this to run
    def click_past_reflections
      find('a', text: 'Past Reflections').click
    end

    def has_todays_reflection_page_visible?
      has_text? 'Describe a meaningful moment:'
    end

    def has_past_reflections_page_visible?
      has_text? 'Previous Reflections'
    end

    # Despite the earlier failures, this still seems to get saved.
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
              'hdfhdoiv dsfklalkjh ljk lkj lkjh lj hkcsdlafhsldkjfhsldfdsk' \
              'hdfhdoiv dsfkllk jhluhoy jhl lkjh asdjhf asdlfkjsadhfw 438r' \
              'dlkjfasdvcsddlskcsdlkjh lkjh lkjh l lhlafhsldkjfhsldfdsk' \
              'hdfhdoiv dsfklasdjlkjh lkjh lkj lhf asdlfkjsadhfw 438r' \
              'dlkjfasdvcsddlskcslkj hlkj h      dlafhsldkjfhsldfdsk' \
              'hdfhdoiv dsfklasdjhlkjh lkjh ljh f asdlfkjsadhfw 438r' \
              'dlkjfasdvcsddlskcsdlkjh lkjh lkjh ljlafhsldkjfhsldfdsk' \
              'hdfhdoiv dsfklalkjh ljh l l ljh sdjhf asdlfkjsadhfw 438r' \
              'dlkjfasdvcsddlskcsl jklhkj lkj lk jl ldlafhsldkjfhsldfdsk' \
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
              'hdfhdoiv dsfklalkjh ljk lkj lkjh lj hkcsdlafhsldkjfhsldfdsk' \
              'hdfhdoiv dsfkllk jhluhoy jhl lkjh asdjhf asdlfkjsadhfw 438r' \
              'dlkjfasdvcsddlskcsdlkjh lkjh lkjh l lhlafhsldkjfhsldfdsk' \
              'hdfhdoiv dsfklasdjlkjh lkjh lkj lhf asdlfkjsadhfw 438r' \
              'dlkjfasdvcsddlskcslkj hlkj h      dlafhsldkjfhsldfdsk' \
              'hdfhdoiv dsfklasdjhlkjh lkjh ljh f asdlfkjsadhfw 438r' \
              'dlkjfasdvcsddlskcsdlkjh lkjh lkjh ljlafhsldkjfhsldfdsk' \
              'hdfhdoiv dsfklalkjh ljh l l ljh sdjhf asdlfkjsadhfw 438r' \
              'dlkjfasdvcsddlskcsl jklhkj lkj lk jl ldlafhsldkjfhsldfdsk' \
    end

    def click_back_button
      find('.fa fa-chevron-circle-left fa-4x').click
    end

    def click_submit
      click_on 'Submit'
    end

    def has_home_visible?
      has_css?('#logo-text')
    end
  end
end