class RemoveAirportssFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :airports
  end
end
