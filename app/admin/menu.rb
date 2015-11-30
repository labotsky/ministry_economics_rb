ActiveAdmin.register Menu do
  permit_params :email, :name, :parent_id

  before_filter :only => [:show, :edit, :update, :destroy] do
    @menu = Menu.find_by_slug(params[:id])
  end

  index do
    selectable_column
    column :name
    actions
  end

  filter :name
  filter :ancestry, label: "Main menu", as: :check_boxes, collection: proc { Menu.roots.order(:name)}
  filter :state

  form do |f|
    f.inputs "Menus" do
      f.input :name
      f.input :state, :as => :select, :collection => [0,1]
      f.input :parent_id, :label => 'Child menu', :as => :select, :collection => Menu.order(:name)
    end
    f.actions
  end

end
