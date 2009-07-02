require 'faker'

namespace :db do
  desc "Recreates the database and then loads the initial database fixtures."
  task :bootstrap do |task_args|
    mkdir_p File.join(RAILS_ROOT, 'log')

    # require 'rubygems' unless Object.const_defined?(:Gem)

    %w(environment db:drop db:create db:migrate db:bootstrap:load tmp:create).each { |t| Rake::Task[t].execute task_args}

    puts
    puts '=' * 80
    puts
    puts "Bootstrapping finished!"
    puts
    puts "Now you can start the application with script/server, visit "
    puts "http://localhost:3000"
    puts
  end

  namespace :bootstrap do
    desc "Load sample data into the current environment's database."
    task :load => :environment do

      %w{Harm Ralph Ariejan Ludo Peter Patrick Bram Michel}.each do |user|
        User.create(:name => user)
      end
    end
  end
end