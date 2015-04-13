class User
attr_accessor :name,:email,:twitter, :facebook 
	def initialize(name,email,twitter,facebook)
		@name=name
		@email=email
		@twitter=twitter
		@facebook=facebook
	end
end
class Email
	def send_message message
		puts "im using email "+message
	end
end
class Twitter
	def send_message message
		puts "im using twitter "+message
	end
end
class Facebook
	def send_message message
		puts "im using facebook "+message
	end
end
class NotificationLess 
	def send_message
		puts "i´m in the prehistory"
	end
end
class NotificatorFactory
	def self.for_user(user)
		 return Email.new if user.email !="none"
		 return Twitter.new if user.twitter !="none"
		 return Facebook.new if user.facebook !="none"
	end		
end
miguel=User.new("miguel", "ss","nsdne","none")
notificator=NotificatorFactory.for_user(miguel)
notificator.send_message("buy it !!")