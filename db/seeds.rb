# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

first = Post.new     name: "this is just a search engine",
                     description: "a search engine",
                     photo: "http://robohash.org/84Y.png?set=set3&size=150x150",
                     dirurl: "http://www.google.com"
first.save

second = Post.new    name: "Our Rails class herokuapp",
                     description: "Don't forget to check in ",
                     photo: "http://robohash.org/EAP.png?set=set3&size=150x150",
                     dirurl: "https://tiy-classroom.herokuapp.com/cohorts/7"
second.save
third = Post.new     name: "This is a link to Matt's Medium Blog page",
                     description: "A link to Matt's Blog",
                     photo: "http://robohash.org/0ZE.png?set=set3&size=150x150",
                     dirurl: "https://medium.com/@mwright86"
third.save

fourth = Post.new    name: "cool videos here",
                     description: "it's this place where people go to watch videos.",
                     photo: "http://robohash.org/K31.png?set=set3&size=150x150",
                     dirurl:"http://youtube.com"
fourth.save

20.times do
  article = Post.new
  article.name = Faker::Lorem.sentences(1)
  article.description = Faker::Lorem.paragraphs(1).join("\n\n")
  article.photo = Faker::Avatar.image
  article.dirurl = Faker::Internet.url
  article.save
end
