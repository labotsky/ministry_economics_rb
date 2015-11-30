# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

menu1 = Menu.create!(name: 'Институт', parent_id: '', state:1)
menu2 = Menu.create!(name: 'Научные издания и публикации', parent_id: '', state:1)
menu3 = Menu.create!(name: 'Научные новости', parent_id: '', state:1)
menu4 = Menu.create!(name: 'Международное сотрудничество', parent_id: '', state:1)
menu5 = Menu.create!(name: 'Консалтинговые улуги', parent_id: '', state:1)
menu6 = Menu.create!(name: 'Опросы', parent_id: '', state:0)
menu7 = Menu.create!(name: 'Карта сайта', parent_id: '', state:0)
menu8 = Menu.create!(name: 'Контактная информация', parent_id: '', state:0)


Menu.create!(name: 'Дирекция', parent_id: menu1.id, state:0)
Menu.create!(name: 'Новости общественной жизни', parent_id: menu1.id, state:0)
Menu.create!(name: 'Поздравление', parent_id: menu1.id, state:0)

Menu.create!(name: 'Конференции', parent_id: menu3.id, state:0)
Menu.create!(name: 'Научные издания', parent_id: menu3.id, state:0)
Menu.create!(name: 'Интервью', parent_id: menu3.id, state:0)

Menu.create!(name: 'Научные публикации', parent_id: menu2.id, state:0)
Menu.create!(name: 'Научные статьи', parent_id: menu2.id, state:0)

Menu.create!(name: 'Партнеры', parent_id: menu4.id, state:0)

Menu.create!(name: 'Научно-исследовательские услуги', parent_id: menu5.id, state:0)




(1..15).each do |i|
  News.create!(title: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur #{i}", body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys
  standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a
  type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining
  essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum
  passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem
  Ipsum.', count: i)
end