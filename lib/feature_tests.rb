
require_relative 'menu'
require_relative 'customer'

yas = Customer.new
menu = Menu.new

yas.add_menu_item('Pizza', 1)
yas.add_menu_item('Pasta', 2)
puts yas.view_order
  