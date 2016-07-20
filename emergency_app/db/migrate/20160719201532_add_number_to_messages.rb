class AddNumberToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :number, :integer
  end
end
