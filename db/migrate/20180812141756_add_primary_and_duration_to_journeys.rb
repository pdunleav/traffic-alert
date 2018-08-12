class AddPrimaryAndDurationToJourneys < ActiveRecord::Migration[5.2]
  def change
    add_column :journeys, :primary, :boolean
    add_column :journeys, :duration, :integer
  end
end
