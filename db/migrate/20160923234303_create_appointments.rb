class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.references :user, foreign_key: true
      t.references :booking, foreign_key: true
      t.integer :status
      t.integer :access
      t.monetize :price

      t.timestamps
    end
  end
end
