class AddPrimaryAndDurationToJourneys < ActiveRecord::Migration[5.2]
  def change
    add_column :journeys, :primary, :boolean, default: false
    add_column :journeys, :duration, :integer
  end
end
