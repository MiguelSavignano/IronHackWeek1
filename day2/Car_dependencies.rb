class Car 
	def initialize sound
		@sound= sound
	end
	def make_noise
		puts @sound
	end
end
class Engine
	attr_accessor:sound
	def set_sound sound
		@sound=sound
	end
end

car= Car.new(Engine.new.set_sound("rummmmm"))
car.make_noise