class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.string :title
      t.string :string
      t.text :description
      t.string :image_url
      t.integer :price
      t.string :category
      t.boolean :available

      t.timestamps null: false
    end
  end
end
