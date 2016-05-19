print "Seeding standard categories ..."


pc_games = Category.create(name: "PC Games")
nintendo_games = Category.create(name: "Nintendo Games")
playstation_games = Category.create(name: "Playstation Games")
puts "seeded #{Category.count} categories"

print "Seeding some games... "

Game.create(title: "Pong", category: pc_games)
Game.create(title: "Commandos", category: pc_games)
Game.create(title: "Settlers", category: pc_games)
Game.create(title: "Darks Souls", category: playstation_games)
Game.create(title: "Ni No Kuni", category: playstation_games)
Game.create(title: "Yoshi's Island", category: nintendo_games)

puts "seeded #{Game.count} games"

puts "Seeding some comments... "

Review.create(game_id:1, comments: "My first Atari game <3")
Review.create(game_id:3, comments: "Ubisoft need to fix this shit, because it's awful. ")
Review.create(game_id:2, comments: "Settlers if fun for old people. Yeah, that means you!")
Review.create(game_id:4, comments: "Ultimate kickass game with gore! FATALITY")
Review.create(game_id:5, comments: "ERMAHGERD!!!!!! BEST GAME EVAAAAAAAAAAAAAAAH!!! SERIOUSLY!!!")
Review.create(game_id:6, comments: "Everybody loves Yoshi")

print "seeded #{Review.count} reviews!"
