@NUMBER_DIVIDER__LAMDBA_WORD_TO_PRINT={ 3=> ->(play_number){"Fizz"},5=> ->(play_number){"Bu#{play_number}zz"},7=> ->(play_number){"Pumm"} }
def fizzbuzz(play_number)
	@fizzbuzz_print=""
	@NUMBER_DIVIDER__LAMDBA_WORD_TO_PRINT.each do |number_divider,lambda_word_to_print|  
		@fizzbuzz_print+=lambda_word_to_print.call(play_number) if is_multiple(play_number,number_divider)
	end
	if @fizzbuzz_print!="" then return @fizzbuzz_print else return play_number end
end
def is_multiple(number_divisor,number_divider)
	if  number_divisor%number_divider==0 then  true else false end
end
(0..100).each {|num|  puts fizzbuzz(num)}

