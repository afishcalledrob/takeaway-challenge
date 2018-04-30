require 'menu_generator'
describe MenuGenerator do
  describe '#list do' do
    it "is expected to respond to 'list' method" do
      expect(subject).to respond_to(:list)
    end
  end
end
