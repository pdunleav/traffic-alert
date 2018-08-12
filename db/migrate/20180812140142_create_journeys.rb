class CreateJourneys < ActiveRecord::Migration[5.2]
  def change
    create_table :journeys do |t|
      t.string :origin_address
      t.float :origin_latitude
      t.float :origin_longitude
      t.string :destination_address
      t.float :destination_latitude
      t.float :destination_longitude
      t.boolean :car
      t.boolean :bicycle
      t.boolean :public_transport
      t.references :user
    end
  end
end
