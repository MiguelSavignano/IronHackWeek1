
class MagicObject
	def initialize
		@store={}
	end
	def method_missing (m,*args,&block)
		@store[m]=args if args.count!=0
		puts @store if args.count==0
	end
end
m=MagicObject.new
m.metodo1 3,4,4,4
m.metodo2 5
m.metodo3 7
m.metodoasda 



