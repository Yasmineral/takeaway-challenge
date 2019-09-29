require 'customer'

describe Customer do
  subject(:customer) { described_class.new }
  describe '#see_menu' do
    context 'so that a customer can order food,' do
      it 'returns a list of dishes and prices ' do
          menu = Menu.new
          expect(customer.see_menu).to eq (menu.available_dishes)
      end
    end
  end

  describe '#see_menu with doubles and mocks' do
    let(:menu) { double(:menu) }
    it 'responds to the see_menu method' do
      allow(menu).to receive(:available_dishes)
      expect(customer.see_menu).to eq (menu.available_dishes)
      customer.see_menu
    end
  end

  describe '#add_menu_item' do
    context 'when a customer selects an item with a quantity of 1 from the menu' do
      it 'retrieves the corresponding total from the menu hash, and adds the order into current_order' do
        customer.add_menu_item('Pizza', 1)
        expect(customer.current_order).to eq [{ dish: "Pizza", quantity: 1, total: 8.99 }]
      end
    end
  end
end

