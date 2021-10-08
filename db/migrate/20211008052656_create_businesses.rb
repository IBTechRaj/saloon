class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.datetime :bdate
      t.time :bstarttime
      t.time :bendtime
      t.string :bservice
      t.integer :brevenue
      t.references :saloonspa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
