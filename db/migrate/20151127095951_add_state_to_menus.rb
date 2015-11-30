class AddStateToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :state, :integer
  end
end
