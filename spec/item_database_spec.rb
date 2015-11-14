require 'item'
require 'item_database'

Rspec.describe(ItemDatabase) do
  describe "#find" do
    subject(:db) do
      db = ItemDatabase.new
      db.register(Item.new("Apple", 100))
      db
    end

    it "retuns fond item" do
      item = db.find("Apple")
      expect(item.name).to eq("Apple")
    end
  end
end
