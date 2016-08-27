class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :start
      t.date :end
      t.integer :final_price
      t.belongs_to :user,  index: true
      t.belongs_to :bicycle, index: true

      t.timestamps null: false
    end
  end
end
