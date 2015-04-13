class Persona
attr_reader:name
attr_accessor:age
	def initialize (name,age)
		@name=name
		@age=age
	end
end
miguel=Persona.new("miguel","26")
puts miguel.name
