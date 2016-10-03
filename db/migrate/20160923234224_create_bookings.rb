class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :therapy, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.integer :max_appointments

      t.timestamps
    end
  end
end
