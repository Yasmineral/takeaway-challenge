class Menu

attr_reader :available_dishes
  
def dishes
    @available_dishes = [
    { dish: 'Pizza', price: 8.99 },
    { dish: 'Pasta', price: 7.99 },
    { dish: 'Noodle Soup', price: 9},
    { dish: 'Fish & Chips', price: 5.99 },
    { dish: 'Curry', price: 9.50 },
    { dish: 'Veggie Burger', price: 7.50 }
    ]
end

  def display_header
    puts "- Menu --------------------------"
    puts " Dish Name            |    Price "
    puts "---------------------------------"
  end

  def display_row(dish, price)
    puts " %-20s | %8s " % [dish, "£%.2f" % price  ]
  end

  def display
    display_header
    dishes.each do |hash|
      dish = hash[:dish]
      price = hash[:price]
      display_row(dish, price)
    end
    footer
  end

  def footer
    puts "---------------------------------"
  end
end