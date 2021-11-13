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

get "/pokemon_trainers" do
  pokemon_trainers= PokemonTrainer.all
  pokemon_trainers.to_json(include: {
    pokemons: { only: [:name]}
    })
end

end
