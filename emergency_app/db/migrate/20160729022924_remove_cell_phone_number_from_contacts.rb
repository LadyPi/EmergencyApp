class RemoveCellPhoneNumberFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :cell_phone_number, :string
  end
end
