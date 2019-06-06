class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.integer :airport_id
      t.integer :flight_id

      t.timestamps
    end
  end
end
