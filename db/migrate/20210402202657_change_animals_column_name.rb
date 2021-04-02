class ChangeAnimalsColumnName < ActiveRecord::Migration[5.2]
  def change
    remove_column :animals, :type
    add_column :animals, :animal_type, :string
  end
end
