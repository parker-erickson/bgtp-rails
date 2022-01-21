class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.string :game
      t.integer :price
      t.string :condition
      t.boolean :pieces_missing

      t.timestamps
    end
  end
end
