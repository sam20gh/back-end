class CreateMyAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :my_airports do |t|
      t.integer :airport_id
      t.integer :user_id
      t.timestamps
    end
  end
end
