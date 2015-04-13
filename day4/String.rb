class String
	def say_yay!
		puts "yaaaaaay!"
	end
end
class Object
	def salute
		puts "hola soy un ---> #{self.class}"
	end
end

class User
	attr_accessor :response
	def initialize
		@response=[]
	end
	def ask
		@response << gets.chomp
	end
end
"ho, relly".salute
User.new.salute
nil.salute
