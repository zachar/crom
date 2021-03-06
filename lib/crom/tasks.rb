namespace :crom do
  desc "Start a crom worker."
  task :start => :environment do
    load Rails.root + 'config/schedule.rb'
    Crom::Worker.logger = Logger.new($stdout)
    Crom::Worker.new.start
  end
end
