class AddSlugToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :slug, :string
    add_index :menus, :slug
  end
end
