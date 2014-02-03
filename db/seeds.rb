# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create(username: 'admin', password: 'test', password_confirmation: 'test')
user = User.create(username: 'user', password: 'test', password_confirmation: 'test')
dragons = User.create(username: 'dragons', password: 'test', password_confirmation: 'test')
lorde = User.create(username: 'lorde', password: 'test', password_confirmation: 'test')
universal = User.create(username: 'universal', password: 'test', password_confirmation: 'test')
rails = User.create(username: 'rails', password: 'test', password_confirmation: 'test')

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

its_time = Video.create(
	title: "Imagine Dragons - It's Time", 
    description: "Music video by Imagine Dragons performing It's Time. (C) 2012 Interscope",
    youtube_id: "sENM2wA_FTg",
    category: music,
    price: 2.99,
    user: dragons
)

royals = Video.create(
	title: "Lorde - Royals", 
    description: "Music video by Lorde performing Royals. (C) 2013 Universal Music ",
    youtube_id: "nlcIKh6sBtc",
    category: music,
    price: 2.00,
    user: lorde
)

awolation = Video.create(
	title: "SAIL - AWOLNATION", 
    description: "Shawna: Hey, do you think we could make rain using a hose duct taped to a pole?\n Tessa: I don't know. Let's try it.",
    youtube_id: "JaAWdljhD5o",
    category: music,
    price: 3.25,
    user: user
)

rise_of_an_empire = Video.create(
	title: "300: Rise of an Empire", 
    description: "Based on Frank Miller's latest graphic novel Xerxes, and told in the breathtaking visual style of
		Greek general Themistokles attempts to unite all of Greece by leading the charge that will change the course of the war.",
    youtube_id: "jGEERBDelH8",
    category: movies,
    price: 12.99,
    user: universal
)

dexter = Video.create(
	title: "Dexter : Inside the Kill Room", 
    description: "Watch a recap of all 8 seasons of Dexter.",
    youtube_id: "XCboInV2pxY",
    category: tv_shows,
    price: 3.99,
    user: universal
)

sublime = Video.create(
	title: "Sublime Text 2: Hello", 
    description: "Perfect Workflow in Sublime Text: Free Course!",
    youtube_id: "5AV9zJH2n_Y",
    category: education,
    price: 3.50,
    user: rails
)

family_guy = Video.create(
	title: "Family Guy: Brian's Death", 
    description: "Watch a recap of all 8 seasons of Dexter.",
    youtube_id: "hifyj-zLVLg",
    category: tv_shows,
    price: 2.49,
    user: user
)

rails_getting_started = Video.create(
	title: "Ruby on Rails - Getting Started", 
    description: "In this Ruby on Rails Blog Tutorial we'll work on getting a blogging application up and running, learn about the
    	rails directory structure, and do a simple hello world. In this video I'm using Rails 3.1 and Ruby 1.9.2 on Linux.",
    youtube_id: "UQ8_VOGj5H8",
    category: education,
    price: 5.00,
    user: rails
)

ruby_productivity = Video.create(
	title: "Impressive Ruby Productivity with Vim and Tmux", 
    description: "Impress your friends, scare your enemies, and boost your productivity by 800% with this live demonstration of Vim 
	    and Tmux. You will learn how to build custom IDEs for each of your projects, navigate quickly between files, write and run tests,
	    view and compare git history, create pull requests, publish gists, format and refactor your code with macros, remote pair program, 
	    and more, all without leaving the terminal.",
    youtube_id: "9jzWDr24UHQ",
    category: education,
    price: 7.00,
    user: rails
)

jump_street = Video.create(
	title: "22 Jump Street", 
    description: "22 Jump Street Official Movie Trailer (2014) (HD) (Channing Tatum, Jonah Hill)",
    youtube_id: "3WkKP92qU3Q",
    category: movies,
    price: 3.50,
    user: universal
)

edge_of_tomorrow = Video.create(
	title: "Edge of Tomorrow", 
    description: "The epic action of \"Edge of Tomorrow\" unfolds in a near future in which an alien race has hit 
	    the Earth in an unrelenting assault, unbeatable by any military unit in the world.",
    youtube_id: "vw61gCe2oqI",
    category: movies,
    price: 10.00,
    user: universal
)

Comment.create(body: "Test comment", video: jump_street, user: lorde)
Comment.create(body: "Test comment", video: edge_of_tomorrow, user: admin)
Comment.create(body: "Test comment 1", video: ruby_productivity, user: user)
Comment.create(body: "Test comment 2", video: ruby_productivity, user: universal)