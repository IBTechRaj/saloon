class AddColumnsToSaloonspa < ActiveRecord::Migration[6.1]
  def change
    add_column :saloonspas, :gstin, :string
    add_column :saloonspas, :pan, :string
    add_column :saloonspas, :chairs, :integer
  end
end
