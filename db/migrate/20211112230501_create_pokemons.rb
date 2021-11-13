class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :pokemon_type
      t.integer :level
      t.integer :pokemon_trainer_id
      t.timestamps
    end
  end
end
