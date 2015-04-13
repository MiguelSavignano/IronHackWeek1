class Vehicle
	attr_accessor :wheels 
	attr_accessor :sound 
	def initialize(wheels,sound)
		@wheels=wheels
		@sound= sound
	end
end
class Wheels
	def number_of_wheels vehicle
		puts vehicle.map { |vehicle| vehicle.wheels}.reduce(0) { |sum,x| sum + x}
	end
end
class Sound
	def make_noising vehicle
		puts vehicle.map { |vehicle| vehicle.sound}.uniq.reduce(""){ |sum,x| sum +"/"+ x}
	end
end

array_vehicles =[Vehicle.new(4,"rumm"),Vehicle.new(2,"rinn"),Vehicle.new(2,"rass"),Vehicle.new(2,"runn"),Vehicle.new(2,"rinn"),Vehicle.new(2,"runn")]
Wheels.new.number_of_wheels(array_vehicles)
Sound.new.make_noising(array_vehicles)
