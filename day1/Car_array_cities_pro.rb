class Car
	def initialize sound
		@sound=sound
		@cities=[]
	end
	def make_noise
		puts @sound
	end
	def cities citie
			@cities.push citie
	end
	def get_cities
		@cities
	end
end

first_car = Car.new "BROOM"
first_car.cities "Madrid"
first_car.cities "Valencia"
first_car.cities "Asturias"
first_car.get_cities
text=IO.write('cities.txt', "Madrid")
puts IO.read('cities.txt')