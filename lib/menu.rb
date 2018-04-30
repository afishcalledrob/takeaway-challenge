require_relative 'menu_generator'

 class Menu

   def initialize(restaurant: nil, menu_generator: Menugenerator.new)
     @dishes = menu_generator.list(restaurant)
   end

   def dishes
    @dishes.dup
   end

end
