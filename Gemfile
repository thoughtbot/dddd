source :rubygems

gem "rails", ">= 3.0"
gem "rack"
gem "haml"
gem "high_voltage"
gem "hoptoad_notifier"
gem "formtastic"
gem "pg"
gem "flutie", "1.1.3"
gem "dynamic_form"
gem "omniauth"

# RSpec needs to be in :development group to expose generators
# and rake tasks without having to type RAILS_ENV=test.
group :development, :test do
  gem "rspec-rails", "~> 2.4.0"
  gem "ruby-debug",   :platforms => :mri_18
  gem "ruby-debug19", :platforms => :mri_19
end

group :test, :cucumber do
  gem "akephalos", :git => "git://github.com/thoughtbot/akephalos.git"

  gem "cucumber-rails"
  gem "factory_girl_rails"
  gem "bourne"
  gem "capybara"
  gem "database_cleaner"
  gem "fakeweb"
  gem "nokogiri"
  gem "timecop"
  gem "treetop"
  gem "shoulda"
  gem "launchy"
end
