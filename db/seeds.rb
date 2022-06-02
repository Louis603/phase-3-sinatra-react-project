puts "🌱 Seeding spices..."

# Seed your database here

fire = "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Pok%C3%A9mon_Fire_Type_Icon.svg/240px-Pok%C3%A9mon_Fire_Type_Icon.svg.png"
water = "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Pok%C3%A9mon_Water_Type_Icon.svg/240px-Pok%C3%A9mon_Water_Type_Icon.svg.png"
grass = "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Pok%C3%A9mon_Grass_Type_Icon.svg/240px-Pok%C3%A9mon_Grass_Type_Icon.svg.png"
normal = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Pok%C3%A9mon_Normal_Type_Icon.svg/240px-Pok%C3%A9mon_Normal_Type_Icon.svg.png"
flying = "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Pok%C3%A9mon_Flying_Type_Icon.svg/240px-Pok%C3%A9mon_Flying_Type_Icon.svg.png"
ice = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Pok%C3%A9mon_Ice_Type_Icon.svg/240px-Pok%C3%A9mon_Ice_Type_Icon.svg.png"
bug = "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Pok%C3%A9mon_Bug_Type_Icon.svg/240px-Pok%C3%A9mon_Bug_Type_Icon.svg.png"
electric = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Pok%C3%A9mon_Electric_Type_Icon.svg/240px-Pok%C3%A9mon_Electric_Type_Icon.svg.png"
ground = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Pok%C3%A9mon_Ground_Type_Icon.svg/240px-Pok%C3%A9mon_Ground_Type_Icon.svg.png"
rock = "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Pok%C3%A9mon_Rock_Type_Icon.svg/240px-Pok%C3%A9mon_Rock_Type_Icon.svg.png"
poison = "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Pok%C3%A9mon_Poison_Type_Icon.svg/240px-Pok%C3%A9mon_Poison_Type_Icon.svg.png"
ghost = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pok%C3%A9mon_Ghost_Type_Icon.svg/240px-Pok%C3%A9mon_Ghost_Type_Icon.svg.png"
dragon = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Pok%C3%A9mon_Dragon_Type_Icon.svg/240px-Pok%C3%A9mon_Dragon_Type_Icon.svg.png"
fighting = "https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Pok%C3%A9mon_Fighting_Type_Icon.svg/240px-Pok%C3%A9mon_Fighting_Type_Icon.svg.png"
psychic = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Pok%C3%A9mon_Psychic_Type_Icon.svg/240px-Pok%C3%A9mon_Psychic_Type_Icon.svg.png"

fire_type = Type.create(element: "Fire", image: fire)
water_type = Type.create(element: "Water", image: water)
grass_type = Type.create(element: "Grass", image: grass)
Type.create(element: "Normal", image: normal)
Type.create(element: "Flying", image: flying)
Type.create(element: "Ice", image: ice)
Type.create(element: "Bug", image: bug)
Type.create(element: "Electric", image: electric)
Type.create(element: "Ground", image: ground)
Type.create(element: "Rock", image: rock)
Type.create(element: "Poison", image: poison)
Type.create(element: "Ghost", image: ghost)
Type.create(element: "Dragon", image: dragon)
Type.create(element: "Fighting", image: fighting)
Type.create(element: "Psychic", image: psychic)

charmander = Pokemon.create(name: "Charmander", hp: 45,height: 35, description: "Fiery", type: fire_type, image:"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png")
bulbasaur = Pokemon.create(name: "Bulbasaur", hp: 45,height: 35, description: "Green", type: grass_type, image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png")
squirtle = Pokemon.create(name: "Squirtle", hp: 45,height: 35, description: "Cool", type: water_type, image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png")

ember = Move.create(name: "ember", damage: 16, type: fire_type)
razor = Move.create(name: "razor leaf", damage: 16, type: grass_type)
water_gun = Move.create(name: "water gun", damage: 16, type: water_type)

PokemonMove.create(move: ember, pokemon: charmander)
PokemonMove.create(move: razor, pokemon: bulbasaur)
PokemonMove.create(move: water_gun, pokemon: squirtle)

puts "✅ Done seeding!"
