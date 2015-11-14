require 'item'
require 'cart.rb'
RSpec.describe(Cart) do
    describe '#total' do
      subject(:cart) {Cart.new}
      it{
        expect(cart.total).to eq(0)
        cart.add(Item.new("apple", 100))
        cart.add(Item.new("orange", 250))
        expect(cart.total).to eq(350)
      }
    end
end

