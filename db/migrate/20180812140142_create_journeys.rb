class CreateJourneys < ActiveRecord::Migration[5.2]
  def change
    create_table :journeys do |t|
      t.string :origin_address
      t.float :origin_latitude
      t.float :origin_longitude
      t.string :destination_address
      t.float :destination_latitude
      t.float :destination_longitude
      t.boolean :car, null: false, default: false
      t.boolean :bicycle, null: false, default: false
      t.boolean :public_transport, null: false, default: false
      t.references :user
    end
  end
end
