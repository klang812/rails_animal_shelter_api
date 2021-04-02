class AddColumnToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :type
  end
end
