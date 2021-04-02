class AddColumnToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :type, :string
  end
end
