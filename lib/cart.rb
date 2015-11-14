require 'item.rb'

class Cart

  def initialize
    @total = 0
    @item = []
  end

  def add(item)
    @total += item.price
    @item << item
  end

  def total
    @total
  end

end 
