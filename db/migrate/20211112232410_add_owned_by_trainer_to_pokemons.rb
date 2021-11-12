class AddOwnedByTrainerToPokemons < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :owned_by_trainer, :boolean
  end
end
