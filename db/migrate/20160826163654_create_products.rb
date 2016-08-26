class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :bicycle
      t.string :title
      t.string :string
      t.text :decsription
      t.string :image_url
      t.integer :price
      t.string :category
      t.string :availability

      t.timestamps null: false
    end
  end
end
