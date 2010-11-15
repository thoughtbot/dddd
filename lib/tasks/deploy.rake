require 'rake'

task :deploy => "deploy:staging"

namespace :deploy do
  desc "Deploy to heroku staging"
  task :staging => "heroku:dependencies" do
    `git push heroku master --force`
    `bundle exec heroku rake db:migrate --remote staging`
    `bundle exec heroku rake hoptoad:deploy TO=staging --remote staging`
  end

  desc "Deploy to heroku production"
  task :production => "heroku:dependencies" do
    `git push production master --force`
    `bundle exec heroku rake db:migrate --remote production`
    `bundle exec heroku rake hoptoad:deploy TO=production --remote production`
  end
end

namespace :heroku do
  task :dependencies do
    `heroku`
    unless $?.success?
      puts "Heroku gem is not installed.  Try: sudo gem install heroku"
      exit 1
    end

    `cd #{Rails.root} && ls .git/config`
    unless $?.success?
      puts "This doesn't appear to be a git repo.  Try: git init"
      exit 1
    end
  end
end
