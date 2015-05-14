# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

# populate games table
Game.create(name: 'Minecraft', website: 'http://minecraft.net', description: 'Minecraft is a game about breaking and placing blocks.')
Game.create(name: '7 Days to Die', website: 'https://7daystodie.com/', description: 'The survival horde crafting game.')
Game.create(name: 'Counter Strike: Global Offensive', website: 'http://blog.counter-strike.net/', description: 'Competitive first-person shooter.')
Game.create(name: 'Team Fortress 2', website: 'http://www.teamfortress.com/', description: 'You better like hats!')