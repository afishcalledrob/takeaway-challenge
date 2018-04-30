class Menu

 attr_reader :menu

  def initialize(menu)
     @menu = {
               "Pizza" => 6.00,
               "Hamburger" => 7.00,
               "Fish and Chips" => 8.00,
               "Chicken Korma" => 9.00,
             }
   end

   def display
     spacing = 32
     menu.each do |dish, price|
      print "#{dish} ";
      print "." * (spacing - dish.length)
      print " £#{price}\n"
     end
   end

   def price(dish)
     @menu[dish]
   end

   def add(dish, price)
     @menu.store(dish, price)
     menu
   end
end
