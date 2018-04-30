require 'menu'

describe Menu do
   subject(:menu) { described_class.new({ "Fish and Chips" => 8.00 }) }


   describe '#display' do
     it 'will show the menu with prices' do
       expect(menu.display).to eq({ "Fish and Chips" => 8.00 })
     end
   end

   describe '#price' do
     it 'displays price of a selected dish' do
       expect(menu.price("Fish and Chips")).to eq 8.00
     end
   end
 end
