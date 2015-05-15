# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# populate games table
Game.create(name: 'Minecraft', website: 'http://minecraft.net', description: 'Minecraft is a game about breaking and placing blocks.')
Game.create(name: '7 Days to Die', website: 'https://7daystodie.com/', description: 'The survival horde crafting game.')
Game.create(name: 'Counter Strike: Global Offensive', website: 'http://blog.counter-strike.net/', description: 'Competitive first-person shooter.')
Game.create(name: 'Team Fortress 2', website: 'http://www.teamfortress.com/', description: 'You better like hats!')

# seed users
User.create! :name => 'John Doe', :email => 'john@gmail.com', :password => 'testdemo1', :password_confirmation => 'testdemo1'
User.create! :name => 'Taylor Becker', :email => 'taylorjosephbecker@gmail.com', :password => 'testdemo1', :password_confirmation => 'testdemo1'
User.create! :name => 'Kate Doe', :email => 'kdoe@gmail.com', :password => 'testdemo1', :password_confirmation => 'testdemo1'
User.create! :name => 'Gregor', :email => 'ggreg@gmail.com', :password => 'testdemo1', :password_confirmation => 'testdemo1'
User.create! :name => 'Willasaurus', :email => 'willss@gmail.com', :password => 'testdemo1', :password_confirmation => 'testdemo1'
User.create! :name => 'Taylor 2', :email => 'taylorjbecker@outlook.com', :password => 'testdemo1', :password_confirmation => 'testdemo1'

# seed servers
Server.create(owner: 'taylorjosephbecker@gmail.com', game_id: 1, title: 'United MC', description: 'United MC is the best server available! We have a growing community of dedicated players and staff ready to go!

If you love Survival Minecraft, this is the server for you!', ip: 'play.unitedmc.com', private: true)
Server.create(owner: 'john@gmail.com', game_id: 1, title: 'Broken MC', description: 'United MC is the worst server available! We have a shrinking community of dedicated players and staff ready to leave!

If you have Survival Minecraft, this is the server for you!', ip: 'play.brokenmc.com', private: true)
Server.create(owner: 'kdoe@gmail.com', game_id: 1, title: 'Awesomecraft', description: 'AwesomeCraft is Awesome!', ip: 'awesomecraft.net', private: true)
Server.create(owner: 'taylorjosephbecker@gmail.com', game_id: 2, title: '7DTD Ultra Survival', description: '200% zomies, 300% health, headshots only!

This is the ultimate survival experience!', ip: '7DUltra.net', private: true)
Server.create(owner: 'taylorjosephbecker@gmail.com', game_id: 4, title: 'TW Public', description: 'Public server. Have fun!', ip: '127.0.0.1', private: false)
Server.create(owner: 'taylorjbecker@outlook.com', game_id: 3, title: 'TW CS Practice', description: 'Private Practice server.', ip: '127.0.0.1', private: true)

# seed invites
Invite.create(to_id: 1, from_id: 5, server_id: 2, read: true, active: false, accepted: true, message: 'Lol brokencraft looks funny')
Invite.create(to_id: 2, from_id: 1, server_id: 1, read: true, active: false, accepted: true, message: 'I really like the look of United MC. I may not have a ton of reputation yet but please give me a chance!

I\'m a great builder and I really enjoy Minecraft. Thanks!')
Invite.create(to_id: 2, from_id: 3, server_id: 1, read: false, active: true, accepted: false, message: 'Hey it\'s me, Kate! I\'d love to get the server IP!')
Invite.create(to_id: 2, from_id: 6, server_id: 1, read: false, active: true, accepted: false, message: 'Yo let me in.')
Invite.create(to_id: 2, from_id: 5, server_id: 1, read: true, active: false, accepted: true, message: 'Hey man thanks in advance for letting me in.')
Invite.create(to_id: 3, from_id: 2, server_id: 3, read: true, active: false, accepted: true, message: 'Hey it\'d be great if I could take a look at Awesomecraft. Thanks!')
Invite.create(to_id: 6, from_id: 2, server_id: 5, read: true, active: false, accepted: false, message: 'Yo let me in!')

# seed reputation
Reputation.create(to_id: 5, from_id: 1, server_id: 2, rating: 5, message: 'Thanks for your help setting up my server man!')
Reputation.create(to_id: 1, from_id: 5, server_id: 2, rating: 5, message: 'Server was really fun!!')
Reputation.create(to_id: 1, from_id: 2, server_id: 1, rating: 4, message: 'Been a great player. Would recommend! Is occasionally sarcastic though.')