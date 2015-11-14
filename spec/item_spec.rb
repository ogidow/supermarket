require 'item.rb'
RSpec.describe(Item) do
  describe  '#name'do
    context 'without parameter' do
      it{ expect(subject.name).to eq(nil) }
    end
  end
  describe  '#name=' do
    context 'without parameter' do
      it{ expect(subject.name).to eq(nil) }
    end
    context 'with parameter' do
      it{ expect(subject.name=("apple")).to eq("apple") }
    end
  end

  describe  '#price'do
    context 'without parameter' do
      it{ expect(subject.price).to eq(nil) }
    end
  end
  describe '#price='do
    context 'without parameter' do
      it{ expect(subject.price).to eq(nil) }
    end
    context 'with parameter' do
      it{ expect(subject.price=(100)).to eq(100) }
    end
  end
end
