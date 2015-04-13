class CommandLineTool
	def initialize(login,menu)
		 while !login.is_correct_login
			login.ask
			if login.is_correct_login
				while true
					menu.puts_option_menu
					menu.run_option_menu(gets.chomp)
				end
			end
			puts"Login error try again" if !login.is_correct_login
		end 
	end
end
class LoginHarcode
	def ask
		puts"*"*10
		puts "User: "
		@user=gets.chomp
		puts"*"*10
		puts "Pass: "
		@pass=gets.chomp
	end
	def is_correct_login
		return true  if @user=="miguel" && @pass=="miguel"
		return false if @user!="miguel" && @pass!="miguel"
	end
end
class LoginTxt
	def ask
		puts"*"*10
		puts "User: "
		@user=gets.chomp
		puts"*"*10
		puts "Pass: "
		@pass=gets.chomp
	end
	def is_correct_login
        array = IO.read("users.txt").split
        array.each_with_index do |x, index|
            return true if array[index+1]==@pass && x == @user
        end
        return false
    end
end
class SplitText
	attr_accessor:key
	def initialize 
		@key ="split"
	end
	def run 
		 puts gets.chomp.split
	end
	def description  
		return puts "-split"
	end
end
class DowncaseText
	attr_accessor:key
	def initialize 
		@key ="downcase"
	end
	def run 
		 puts gets.chomp.downcase
	end
	def description  
		return puts "-downcase"
	end
end
class MenuOption
	def initialize
		@options=[] 
		@options<< SplitText.new
		@options<< DowncaseText.new
	end
	def puts_option_menu
		puts "*"*4+"MENU"+"*"*4
		@options.each do |option|
			option.description
		end
	end
	def run_option_menu (key)
		@options.each do |option|
			option.run if option.key==key
		end
	end
end
CommandLineTool.new(LoginTxt.new, MenuOption.new)