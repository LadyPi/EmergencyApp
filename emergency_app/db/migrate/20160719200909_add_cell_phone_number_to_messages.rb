class AddCellPhoneNumberToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :cell_phone_number, :integer
  end
end
