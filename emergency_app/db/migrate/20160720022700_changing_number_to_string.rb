class ChangingNumberToString < ActiveRecord::Migration
  def change
  	change_column :contacts, :number, :string
  end
end
