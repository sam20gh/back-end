class RemoveflightsFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :flights
  end
end
