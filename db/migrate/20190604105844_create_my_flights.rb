class CreateMyFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :my_flights do |t|
      t.integer :flight_id
      t.integer :user_id

      t.timestamps
    end
  end
end
