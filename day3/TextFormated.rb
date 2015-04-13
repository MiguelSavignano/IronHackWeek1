class Car 
end

class CarList (format)
	def initialize
		@format=format
	end 
	def report
	end
end
class HTMLReport
	
end

car1= Car.new("Broom")
car2= Car.new("Meeek")
car3= Car.new("Nya")
cars= Car.new("Nya")


CarList.new(cars,HTMLReport.new).report
CarList.new(carsMarkReport.new).report