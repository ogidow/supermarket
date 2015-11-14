require 'item.rb'

class Cart

  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def total
    @items.inject(0){|sum, item| sum += item.price}
  end

end
