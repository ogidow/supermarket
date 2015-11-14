require 'item'
require 'item_database'

RSpec.describe(ItemDatabase) do
  describe "#find" do
    subject(:db) do
      db = ItemDatabase.new
      db.register(Item.new("Apple", 100))
      db
    end

    context "matched parameter" do
      it "success find name" do
        item = db.find("Apple")
        expect(item.name).to eq("Apple")
      end
    end

    context "not matched parameter" do
      it "retrutn nil" do
        expect(db.find("Orange")).to eq(nil)
      end
    end

  end
end
