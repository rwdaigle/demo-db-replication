namespace :db do

  task :environment do
    load 'config.rb'
  end

  desc "Migrate the database"
  task(:migrate => :environment) do
    ActiveRecord::Migrator.migrate("db/migrate")
  end
end

