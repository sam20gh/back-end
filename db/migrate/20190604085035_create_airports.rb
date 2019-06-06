class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :name
      t.string :codeIataAirport
      t.string :codeIcaoAirport
      t.string :latitudeAirport
      t.string :longitudeAirport
      t.string :geonameId
      t.string :timezone
      t.string :GMT
      t.string :phone
      t.string :nameCountry
      t.string :codeIso2Country
      t.string :codeIataCity
      t.timestamps
    end
  end
end
