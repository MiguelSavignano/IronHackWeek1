
sentence=""
while sentence!="exit"
	begin
		sentence= gets.chop
		puts eval sentence
	rescue
		puts "ERROR"
	end
end

