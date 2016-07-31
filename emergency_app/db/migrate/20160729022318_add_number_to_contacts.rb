class AddNumberToContacts < ActiveRecord::Migration
  def change
  	add_column :contacts, :number, :string
  end
end
