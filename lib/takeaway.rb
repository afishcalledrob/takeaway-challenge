require 'menu'

 class TakeAway

   attr_reader :basket, :menu, :display, :bill, :total

   def initialize(menu = Menu.new)
     @menu = menu
     @basket = []
     @bill = []
   end

   def view
     menu.display
   end

   def order(dish, quantity)
     sum = menu.price_of_dish(dish).to_f * quantity.to_f
     basket << "#{dish} X #{quantity} = £#{sum}"
     @bill << sum
     @total += (menu.price(dish).to_f * quantity.to_i)
     "#{quantity} X #{dish} added to your basket"
   end

    def check
     print "#{basket.join("\n") }\n"
     puts "Total = £#{@total}"
   end
 end
