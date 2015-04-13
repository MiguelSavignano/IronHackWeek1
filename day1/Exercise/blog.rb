class Blog
	def initialize
		@array_post=[]
	end
	def create_front_page(post)
		@array_post.push post 
	end
	def store_by_date_blog
		@array_post.sort! { |a,b| a.date <=> b.date }
	end
	def publish_front_page
		@array_post.each do |post|
			 post.getinformationpost
		end
	end
end
class Post
	attr_accessor:title
	attr_accessor:date
	attr_accessor:text
	attr_accessor:espatrocinado
	
	def initialize(title,date,text)
		@title=title
		@date=date
		@text=text
	end

	def getinformationpost
		puts "#{@title}-#{@date}\n*******************\n#{@text}\n ---------------------"
	end
end

class PostPatrocinado< Post
	def getinformationpost
		puts "#{@title}-#{@date}*********\n*******************\n#{@text}\n ---------------------"
	end
end

blog =Blog.new
blog.create_front_page(Post.new('titulo1','02/04/2015',"esto es un texto 1"))
blog.create_front_page PostPatrocinado.new('titulo2','10/04/2015',"esto es un texto 2")
blog.create_front_page Post.new('titulo3','03/04/2015',"esto es un texto 3")
blog.create_front_page Post.new('titulo4','03/04/2015',"esto es un texto 4")
blog.create_front_page Post.new('titulo5','03/04/2015',"esto es un texto 5")
blog.create_front_page Post.new('titulo6','03/04/2015',"esto es un texto 6")
blog.publish_front_page

