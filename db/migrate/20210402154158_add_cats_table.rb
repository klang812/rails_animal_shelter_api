class AddCatsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.references :animal, null: false, foreign_key: true

      t.timestamps
    end
    
  end
end
