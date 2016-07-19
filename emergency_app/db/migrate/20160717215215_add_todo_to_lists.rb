class AddTodoToLists < ActiveRecord::Migration
  def change
    add_column :lists, :todo, :string
  end
end
