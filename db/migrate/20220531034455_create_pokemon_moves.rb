class CreatePokemonMoves < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemon_moves do |t|
      t.integer :move_id
      t.integer :pokemon_id
    end
  end
end
