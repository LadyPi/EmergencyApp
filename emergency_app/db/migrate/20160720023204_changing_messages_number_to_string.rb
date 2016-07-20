class ChangingMessagesNumberToString < ActiveRecord::Migration
  def change
  	change_column :messages, :number, :string
  end
end
