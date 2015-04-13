	require 'pry'
	def division(num, divisor)
		begin
			return num/divisor
		rescue
			return "infinito"
		ensure
			puts "good bye"
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
miguel=User.new
miguel.ask
miguel.ask
puts division(miguel.response[0].ord,miguel.response[1].ord)
