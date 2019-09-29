require_relative 'menu'
require 'bigdecimal'

class Customer

attr_accessor :current_order  

  def initialize(menu = Menu.new)
    @menu = menu
    @current_order = [] 
  end

  def see_menu
    @menu.display
  end

  def add_menu_item(item, quantity)
   total = retrieve_item_price(item)
   total = total.to_f
   @current_order << { dish: item, quantity: quantity, total: total }
  end

  def view_order
    @current_order
  end

  # private?
  def retrieve_item_price(item)
    available_dishes = @menu.dishes
    @total = available_dishes.select { |h| h[:dish] == item }.map { |h| h[:price] }
    @total.join
  end  

  def display_header
    puts "- Order ---------------------------"
    puts " Dish Name    | Quantity |  Price "
    puts "-----------------------------------"
  end

  def display_row(dish, quantity, price)
    puts " %-12s | %-8s | %6s " % [dish, quantity, "£%.2f" % price  ]
  end

  

end

