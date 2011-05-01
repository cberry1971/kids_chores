namespace :app do

  task :ensure_development_environment => :environment do
    if Rails.env.production?
      raise "Sorry I can't do that.  You are asking me to drop your production database"
    end
  end

  desc "Reset db and seed with seed.rb"
  task :reset => [:ensure_development_environment, "db:drop", "db:create", "db:migrate", "db:seed"]

end
