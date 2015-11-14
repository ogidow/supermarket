require 'item.rb'
class ItemDatabase

  def initialize
    @items = []
  end

  def register(item)
    @items << item
  end

  def find(name)
    @items.find{|item| item.name == name}.name
  end
end
