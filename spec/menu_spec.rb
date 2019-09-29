require 'menu'

describe Menu do
  subject(:menu) { described_class.new }
  let(:available_dishes) do
  [
    { dish: 'Pizza', price: 8.99 },
    { dish: 'Pasta', price: 7.99 },
    { dish: 'Noodle Soup', price: 9},
    { dish: 'Fish & Chips', price: 5.99 },
    { dish: 'Curry', price: 9.50 },
    { dish: 'Veggie Burger', price: 7.50 }
  ]
  end

  describe '#dishes' do
    it 'returns the list of dishes' do
      expect(subject.dishes).to eq available_dishes
    end
  end 

describe '#display_header' do
  test_output =  "- Menu --------------------------\n"
    test_output << " Dish Name            |    Price \n"
    test_output << "---------------------------------\n"
  it 'displays the menu header' do
    expect{ menu.display_header }.to output(test_output).to_stdout
  end
end

describe '#display' do
  it 'forwards 2 arguments to the display_row method' do
    menu.display
    expect(menu).to respond_to(:display_row).with(2) 
  end
end
end