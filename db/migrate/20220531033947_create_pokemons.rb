class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :hp
      t.integer :height
      t.timestamp :met_at
      t.text :description
      t.integer :type_id
      t.string :image
    end
  end
end
