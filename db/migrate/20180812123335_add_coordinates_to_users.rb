class AddCoordinatesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :work_latitude, :float
    add_column :users, :work_longitude, :float
    add_column :users, :home_latitude, :float
    add_column :users, :home_longitude, :float
  end
end
