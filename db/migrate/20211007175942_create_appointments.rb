class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :apptdate
      t.string :service
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
