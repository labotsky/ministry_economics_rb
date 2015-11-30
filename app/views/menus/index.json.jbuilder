json.array!(@menus) do |menu|
  json.extract! menu, :id, :name, :ancestry
  json.url menu_url(menu, format: :json)
end
