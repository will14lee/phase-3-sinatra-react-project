puts "🌱 Seeding spices..."

# Seed your database here
Pokemon.create(
    name: "Bulbasaur",
    pokemon_type: "Grass",
    level: "5",
    pokemon_trainer_id: 1,
    owned_by_trainer: true
)

Pokemon.create(
    name: "Charmander",
    pokemon_type: "Fire",
    level: "5",
    pokemon_trainer_id: 2,
    owned_by_trainer: true
)

Pokemon.create(
    name: "Squirtle",
    pokemon_type: "Water",
    level: "5",
    pokemon_trainer_id: nil,
    owned_by_trainer: false
)

Pokemon.create(
    name: "Caterpie",
    pokemon_type: "Bug",
    level: "5",
    pokemon_trainer_id: nil,
    owned_by_trainer: false
)

Pokemon.create(
    name: "Mewtwo",
    pokemon_type: "Psychic",
    level: "70",
    pokemon_trainer_id: 3,
    owned_by_trainer: true
)

Pokemon.create(
    name: "Arceus",
    pokemon_type: "Normal",
    level: "70",
    pokemon_trainer_id: nil,
    owned_by_trainer: false
)

Pokemon.create(
    name: "Togepie",
    pokemon_type: "Normal",
    level: "10",
    pokemon_trainer_id: 4,
    owned_by_trainer: true
)

PokemonTrainer.create(
    name: "Ash Ketchum",
    gender: "Male"
)

PokemonTrainer.create(
    name: "Gary Oak",
    gender: "Male"
)

PokemonTrainer.create(
    name: "Red",
    gender: "Male"
)

PokemonTrainer.create(
    name: "Misty Williams",
    gender: "Female"
)

puts "✅ Done seeding!"

#Dummy Data for Postman
# {
#     "name": "Squirtle",
#     "pokemon_type": "Water",
#     "level": 5,
#     "pokemon_trainer_id": 4,
#     "owned_by_trainer": true
# }

# {
#     "name": "Brock",
#     "gender": "Male"
# }