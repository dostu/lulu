# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create(username: 'admin', password: 'test', password_confirmation: 'test')
dragons = User.create(username: 'dragons', password: 'test', password_confirmation: 'test')

movies = Category.create(name: 'Movies')
tv_shows = Category.create(name: 'TV Shows')
music = Category.create(name: 'Music')
education = Category.create(name: 'Education')

on_top_of_the_world = Video.create(
	title: "Imagine Dragons - On Top Of The World", 
    description: "Music video by Imagine Dragons performing On Top Of The World.
   				  (C) 2013 KIDinaKORNER/Interscope Records",
    youtube_id: "w5tWYmIOWGk",
    category: music,
    price: 3.50,
    user: dragons
)

on_top_of_the_world = Video.create(
	title: "Imagine Dragons - It's Time", 
    description: "Music video by Imagine Dragons performing It's Time. © 2012 Interscope",
    youtube_id: "sENM2wA_FTg",
    category: music,
    price: 2.99,
    user: dragons
)