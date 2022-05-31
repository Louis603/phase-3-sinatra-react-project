class CreateMoves < ActiveRecord::Migration[6.1]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :damage
      t.integer :type_id
    end
  end
end
