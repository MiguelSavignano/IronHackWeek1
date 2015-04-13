class Car
	attr_accessor:sound
	def initialize sound
		@sound=sound
	end
	def make_noise
		return @sound
	end
end
 
array_car =[Car.new("sound1"),Car.new("sound2"),Car.new("sound3")]
puts array_car
puts array_car.reduce(""){|sum,x| sum+x.sound}
