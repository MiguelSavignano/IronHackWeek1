class Room
attr_accessor :room_description,:exit,:item
	def initialize (room_description,exits, item)
		@room_description=room_description
		@exit={}
		@item = item
	end
end
class Player
	attr_accessor:life
	def initialize
		@items = []
		@life =2
	end
	def get_inventory
		if @items == []
			puts "No tienes objetos."
		else
			puts "Inventario"
			@items.each do |item|		
				puts "-> #{item}"
			end
		end
	end
	def take_object(item)
		puts "Coges una #{item}."
		@items << item
	end
	def drop_object
		if @items == []
			puts "No hay objetos"
		else
			puts "¿que quieres tirar?"
			@items.each do |item|		
				puts "-> #{item}"
			end
			del_item = gets.chomp
			if !@items.delete del_item 
				puts "No existe ese objeto"
			else
				puts "Objeto eliminado"
			end
		end
	end
end
class Game
	def initialize
		@game_map=[]
	end
	def gameprocesor (orden, jugador, room)
		@orden = orden
		jugador.take_object(room.item) if @orden=="Pick"
		jugador.get_inventory if @orden=="Inventory"
		jugador.drop_object if @orden=="Drop"

		if @orden == "W" || @orden == "S" || @orden == "N" || @orden == "E"
			return false if @orden==room.exit
			return true if @orden!=room.exit
		end
		if @orden == "Pick" || @orden == "Inventory" || @orden == "Drop"
			return true
		else
			puts "Aprende a escribir lo que debes >:D"
			puts "HAS PERDIDO UNA VIDA"
			jugador.life=jugador.life - 1
			return true
		end
	end
	def add_room(room)
		@game_map << room
	end
	def print_rooms
		@game_map.each{ |room| puts room.exit}
	end
	def start_game
		jugador=Player.new
		@game_map.each do |room|
			puts "-------------------------------------------------------"
			puts "#{room.room_description}. En esta habitacion hay una #{room.item}"
			puts "-------------------------------------------------------"
			a=gets.chomp	
			puts ""		
			while gameprocesor(a,jugador,room) 										
				break if jugador.life==0
				puts ""
				puts "-------------------------------------------------------"		
				puts "#{room.room_description}. | #{jugador.life} Vida"
				puts "-------------------------------------------------------"		
				a=gets.chomp
				puts ""	
			end
			if jugador.life==0
				puts "lose all life #{room.room_message_death}"
				break
			end	 
		end
	end
end


juego=Game.new
juego.add_room(Room.new('Dark room1',{"N" => 7, "S" => 4,"W" => 3, "E" => 2},'sword1')
juego.add_room(Room.new('Dark room2',{"N" => 8, "S" => 5,"W" => 1, "E" => 3},'sword2')
juego.add_room(Room.new('Dark room3',{"N" => 9, "S" => 6,"W" => 2, "E" => 1},'sword3')
juego.add_room(Room.new('Dark room4',{"N" => 1, "S" => 7,"W" => 6, "E" => 5},'sword4')
juego.add_room(Room.new('Dark room5',{"N" => 2, "S" => 8,"W" => 4, "E" => 6},'sword5')
juego.add_room(Room.new('Dark room6',{"N" => 3, "S" => 9,"W" => 5, "E" => 4},'sword6')
juego.add_room(Room.new('Dark room7',{"N" => 4, "S" => 1,"W" => 9, "E" => 8},'sword7')
juego.add_room(Room.new('Dark room8',{"N" => 5, "S" => 2,"W" => 7, "E" => 9},'sword8')
juego.add_room(Room.new('Dark room9',{"N" => 6, "S" => 3,"W" => 8, "E" => 7},'sword9')
juego.start_game
