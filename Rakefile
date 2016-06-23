# filename: Rakefile
require './spec/env.rb'

# Loads development version of the app
desc 'Set up and start app for testing'
task :load_app_local do
  Dir.chdir("#{ENV['Path']}/lutgendorf/") do
    system('rake db:drop db:create db:migrate')
    system('rake selenium_seed:with_fixtures')
    system('rails s')
  end
end
