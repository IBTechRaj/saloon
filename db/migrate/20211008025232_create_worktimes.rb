class CreateWorktimes < ActiveRecord::Migration[6.1]
  def change
    create_table :worktimes do |t|
      t.integer :weekday
      t.time :opens
      t.time :closes
      t.references :saloonspa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
