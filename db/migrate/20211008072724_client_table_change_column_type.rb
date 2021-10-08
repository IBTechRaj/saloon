class ClientTableChangeColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column(:clients, :mobile, :string)
  end
end
