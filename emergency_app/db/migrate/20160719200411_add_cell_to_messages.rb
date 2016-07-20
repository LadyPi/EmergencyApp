class AddCellToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :cell, :integer
  end
end
