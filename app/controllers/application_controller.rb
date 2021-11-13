class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    "Hello welcome to the Pokemon API!"
  end

  get "/pokemons" do
    pokemons= Pokemon.all
    pokemons.to_json(include: {
      pokemon_trainer: { only: [:name]}
    })
  end
  
  get "/pokemons/:id" do
    pokemon= Pokemon.find_by(id: params[:id])
    pokemon.to_json(include: {
      pokemon_trainer: { only: [:name]}
    })
  end
  
  get "/strongest_pokemon" do
    strongest_pokemon= Pokemon.order(level: :desc).limit(1)
    strongest_pokemon[0].to_json(include: {
      pokemon_trainer: { only: [:name]}
    })
  end
  
  post "/pokemons" do
    pokemon= Pokemon.create(
      name: params[:name],
      pokemon_type: params[:pokemon_type],
      level: params[:level],
      pokemon_trainer_id: params[:pokemon_trainer_id],
      owned_by_trainer: params[:owned_by_trainer]
    )
    pokemon.to_json(include: {
      pokemon_trainer: { only: [:name]}
    })
  end
  # name and gender for pokemon trainer

  get "/pokemon_trainers" do
    pokemon_trainers= PokemonTrainer.all
    pokemon_trainers.to_json(include: {
      pokemons: { only: [:name]}
      })
  end

  get "/pokemon_trainers/:id" do
  pokemon_trainer= PokemonTrainer.find_by(id: params[:id])
  pokemon_trainer.to_json(include: {
    pokemons: { only: [:name]}
    })
  end


  post "/pokemon_trainers" do
    pokemon_trainer= PokemonTrainer.create(
      name: params[:name],
      gender: params[:gender]
    )
    #How would I make a nested post? Where you can also make a pokemon?
    pokemon_trainer.to_json(include: {
      pokemons: { only: [:name]}
    })
  end


end
