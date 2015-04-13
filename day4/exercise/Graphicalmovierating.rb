require 'imdb'
require 'pry'
class Movies
	attr_accessor :movie_and_ranking
	def initialize(source_file)
		@source_file = source_file
		@movie_to_searchs = IO.readlines(@source_file).each {|m| m.delete!("\n")}
		@movie_hash_response = {}
	end
	def add_to_hash
		@movie_to_searchs.each { |movie_to_search|
			@movie_hash_response[movie_to_search]= Imdb::Search.new(movie_to_search).movies.first.rating
		}
		binding.pry
	end
end
movies = Movies.new("movies.txt").add_to_hash
