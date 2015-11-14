require 'sinatra'
require 'sinatra/json'
require_relative 'lib/item.rb'
require_relative 'lib/item_database.rb'

db = ItemDatabase.new
db.register(Item.new("apple", 100))

get '/items/:name' do
  item = db.find(params['name'])
  if item
    json("{'name': #{item.name}, 'price': #{item.price}}")
  else
    pass
  end
end
