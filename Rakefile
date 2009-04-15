# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'

namespace :db do
  
  desc "sets up your databases"
  task :bootstrap do
    %w(development production test).each do |env|
      `mysqladmin --user root create bugger_#{env}`
    end
  end 
  
  desc "Load seed fixtures (from db/fixtures) into the current environment's database." 
  task :seed => :environment do
    require 'active_record/fixtures'
    Dir.glob(RAILS_ROOT + '/db/fixtures/*.yml').each do |file|
      Fixtures.create_fixtures('db/fixtures', File.basename(file, '.*'))
    end
  end
  
  desc "Load sample data fixtures (from db/fixtures/sampledata) into the current environment's database to get you started." 
  task :sampledata => :environment do
    require 'active_record/fixtures'
    Dir.glob(RAILS_ROOT + '/db/fixtures/sampledata/*.yml').each do |file|
      Fixtures.create_fixtures('db/fixtures/sampledata', File.basename(file, '.*'))
    end
  end
  
  desc "drop *all* your databases (for bugger)"
  task :drop do
    %w(development production test).each do |env|
      `mysqladmin -f --user root drop bugger_#{env}`
    end
  end
  
end