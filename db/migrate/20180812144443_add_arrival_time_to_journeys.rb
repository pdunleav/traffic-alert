class AddArrivalTimeToJourneys < ActiveRecord::Migration[5.2]
  def change
    add_column :journeys, :arrival_time, :time
  end
end
