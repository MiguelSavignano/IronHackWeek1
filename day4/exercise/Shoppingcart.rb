require 'pry'
class ShoppingCart
  def initialize 
     @items_array=[]
  end
  def add (item)
  	@items_array.push item
  end
  def print_total
     @items_array.each do |item|
       puts "#{item.name}-->#{item.value} X #{item.number} = #{item.number*item.value}"
     end
  end
  def discount
    @items_array.each do |item|
        item.discount_funtion.call
    end    
  end
end
class Item
  attr_accessor :value
  attr_accessor :number
  attr_accessor :name
  attr_accessor :discount_funtion
end
class Fruits< Item
end
class Housewares< Item
end
class Banana < Fruits
  	def initialize number
      @value =10
		  @name="Banana"
      @number=number
      @discount_funtion = ->{@value*=0.9 if Date.new.is_weekday}
	 end
end
class Orange_Juice < Fruits
	def initialize number
    @value =10
		@name="Orange Juice"
    @number=number
    @discount_funtion = ->{@value*=0.95 if @value<=100}
	end
end
class Rice < Item
	def initialize number
    @value=1
    @name="Rice"
    @number=number
    @discount_funtion = ->{}
	end
end
class Vacuum_Cleaner < Housewares
	def initialize number
    @value=150
		@name="Vacuum Cleaner"
    @number=number
    @discount_funtion = ->{@value*=0.95 if @value>=100}
	end
end
class Anchovies < Item
	def initialize number
    @value=2
    @name="Anchovies"
    @number=number
    @discount_funtion = ->{}
	end
end
class Date
  def is_weekday
    return true
  end
end
cart = ShoppingCart.new
cart.add(Banana.new(3))
cart.add(Orange_Juice.new(1))
cart.add(Vacuum_Cleaner.new(3))
cart.add(Anchovies.new(3))
cart.discount
cart.print_total
