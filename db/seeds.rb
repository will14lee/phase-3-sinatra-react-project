puts "🌱 Seeding spices..."

# Seed your database here
Pokemon.create(
    name: "Bulbasaur",
    type: "Grass",
    level: "5",
    pokemon_trainer_id: 1,
    owned_by_trainer: true
)

Pokemon.create(
    name: "Charmander",
    type: "Fire",
    level: "5",
    pokemon_trainer_id: 2,
    owned_by_trainer: true
)

Pokemon.create(
    name: "Squirtle",
    type: "Water",
    level: "5",
    pokemon_trainer_id: nil,
    owned_by_trainer: false
)

Pokemon.create(
    name: "Caterpie",
    type: "Bug",
    level: "5",
    pokemon_trainer_id: nil,
    owned_by_trainer: false
)

Pokemon.create(
    name: "Mewtwo",
    type: "Psychic",
    level: "70",
    pokemon_trainer_id: 3,
    owned_by_trainer: true
)

Pokemon.create(
    name: "Arceus",
    type: "Normal",
    level: "70",
    pokemon_trainer_id: nil,
    owned_by_trainer: false
)

Pokemon.create(
    name: "Togepie",
    type: "Normal",
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
