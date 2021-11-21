# Pokemon and Pokemon Trainer Database

## Introduction:
Hello and welcome to my first database in Ruby!
I will be primarily using Sinatra to power my backend. 
For my frontend, I will be utilizing React

## Schema
This backend consists of two tables: the Pokemon and Pokemon trainer tables.
The columns for the Pokemon table are: name, pokemon_type, level, created_at, updated_at, trainer_id, and 
owned_by_trainer.
The columns for the Pokemon Trainer table are: name, gender, and created_at, and updated_at.

## Models
The models and their relationships for this Sinatra backend are that of 
Pokemon and Pokemon Trainers.
A Pokemon trainer has many Pokemons, and the Pokemon belong to a Pokemon Trainer.

## Routes:
The different routes for this backend include the standard CRUD operations for
both the Pokemon and Pokemon Trainer models (get, post, patch, and destroy).

Additionally if you input strongest_pokemon the server will find and display the highest level
Pokemon. And if you put pokemon_trainers_pokemon and a pokemon trainer's name, it will display
all of the Pokemon owned by that trainer.

## Where to Find Frontend
To find the frontend for this application please go to: https://github.com/will14lee/pokemon_project3_frontend



<!-- Clarification on how many models do I need? -->