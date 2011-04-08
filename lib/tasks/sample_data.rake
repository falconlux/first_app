require 'faker'
namespace :db do
  desc "Fill database with sample date"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin=User.create!(:name => "Falconlux",
                 :email => "falcon.lux@gmail.com",
                 :password => "asdasd",
                 :password_confirmation => "asdasd")
    admin.toggle!(:admin)
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "123123"
      User.create!(:name => name,
                   :email => email,
                   :password =>password,
                   :password_confirmation => password)
    end

    User.all(:limit => 6).each do |user|
      50.times do
        user.microposts.create!(:content => Faker::Lorem.sentence(5))
      end
    end
  end
end

