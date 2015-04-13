class Car
	def initialize sound
		@sound=sound
		@cit
	end
	def make_noise
		puts @sound
	end
	def self.make_noise_twice car
		car.make_noise
		car.make_noise
	end
	def cities car
		car.make_noise
		car.make_noise
	end
end
first_car = Car.new "BROOM"
Car.make_noise_twice first_car
Car.new("bruumm").make_noise
