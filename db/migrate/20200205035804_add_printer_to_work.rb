class AddPrinterToWork < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :printer_id, :integer
  end
end