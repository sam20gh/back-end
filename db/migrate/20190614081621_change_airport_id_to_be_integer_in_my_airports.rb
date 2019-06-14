class ChangeAirportIdToBeIntegerInMyAirports < ActiveRecord::Migration[5.2]
  def change
    change_column :my_airports, :airport_id, 'integer USING CAST(airport_id AS integer)'
  end
end
