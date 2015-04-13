class Car
	attr_accessor: brand
	def initialize sound
		@sound=sound
	end
	def make_noise
		puts @sound
	end
end

class CarRacing <Car
	def initialize 
		@sound="BROOM"
	end
end 

Car.new("broomm").make_noise
CarRacing.new.make_noise

