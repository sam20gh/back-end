class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :departure_iataCode
      t.string :departure_icaoCode
      t.datetime :departure_scheduledTime
      t.datetime :departure_estimatedTime
      t.datetime :departure_estimatedRunway
      t.datetime :departure_actualRunway
      t.string :airline
      t.string :airline_iataCod
      t.string :airline_icaoCode
      t.string :airline
      t.string :arrival_iataCode
      t.string :arrival_icaoCode
      t.datetime :arrival_estimatedTime
      t.datetime :arrival_estimatedTime
      t.datetime :arrival_estimatedRunway
      t.datetime :status

      t.timestamps
    end
  end
end
