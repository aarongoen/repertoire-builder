class CreatePieces < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :composer
      t.integer :length
      t.string :key
      t.string :period
      t.integer :like

      t.timestamps
    end
  end
end
