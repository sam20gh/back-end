class ChangeAirportIdToBeStringInMyAirports < ActiveRecord::Migration[5.2]
  def change
     change_column :my_airports, :airport_id, :string
  end
end
