class AddAddressesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :home_address, :string
    add_column :users, :work_address, :string
  end
end
