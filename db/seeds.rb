puts "🌱 Seeding spices..."

# Seed your database here

fire = Type.create(element: "Fire")
water = Type.create(element: "Water")
grass = Type.create(element: "Grass")

charmander = Pokemon.create(name: "Charmander", hp: 45,height: 35, description: "Fiery", type: fire, image:"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png")
bulbasaur = Pokemon.create(name: "Bulbasaur", hp: 45,height: 35, description: "Green", type: grass, image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png")
squirtle = Pokemon.create(name: "Squirtle", hp: 45,height: 35, description: "Cool", type: water, image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png")

ember = Move.create(name: "ember", damage: 16, type: fire)
razor = Move.create(name: "razor leaf", damage: 16, type: grass)
water_gun = Move.create(name: "water gun", damage: 16, type: water)

PokemonMove.create(move: ember, pokemon: charmander)
PokemonMove.create(move: razor, pokemon: bulbasaur)
PokemonMove.create(move: water_gun, pokemon: squirtle)

puts "✅ Done seeding!"
