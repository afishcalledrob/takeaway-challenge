require 'dish'
describe Dish do
  describe '#initialize' do
    it "defaults to nil" do
      expect(subject.name).to eq(nil)
    end

    it "defaults to nil value for price" do
      expect(subject.price). to eq(nil)
    end
  end
end
