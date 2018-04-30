require 'takeaway'

 describe TakeAway do
   describe '#display' do
     it 'should respond to view' do
     expect(subject).to respond_to(:view)
     end
     it 'should return a list of dishes, prices and order number' do
     expect(subject.view).to eq(@list_of_dishes)
     end
   end
   describe '#place_order' do
     it 'puts an order into the basket once placed' do
     subject.place_order("Vindaloo", 2)
     expect(subject.basket).to include("Vindaloo X 2 = £14.0")
     end
   end
 end
