class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :airport_id
      t.integer :user_id
      t.string :comment_title
      t.string :comment_content
      t.integer :rating

      t.timestamps
    end
  end
end
