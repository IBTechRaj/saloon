class AddColumnsToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :appttime, :datetime
    add_column :appointments, :saloonspa, :string
  end
end
