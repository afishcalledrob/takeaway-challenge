require 'menu'
describe Menu do
  let(:menu_generator) { instance_double 'Menu_generator'}
  subject(:menu) { described_class.new(restaurant: 'Zizzis', menu_generator: menu_generator) }
  before { allow(menu_generator).to receive(:list).with(anything).and_return([]) }

  describe '#initialize' do

    it 'defaults to empty list' do
      expect(subject.dishes).to be_empty
    end

  end
end
