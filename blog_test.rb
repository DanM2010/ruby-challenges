class Blog

	# keep track of how many posts
	# save the posts into array
	
	@@total_posts = 0
	@@blog_store = []
	
	# This code is from solution - not used
	#def self.all_posts
	#	@@blog_store
	#end
	
	
	def self.current_count		
		puts "Total posts: #{@@total_posts}"
	end
	
	#add post to  array
	def self.save(post)
		@@blog_store << post
		@@total_posts += 1
	end
	
	# print all posts
	def self.publish()
		
		@@blog_store.each do |post|
			puts "Title: n #{post.title}"
			puts "Body: n #{post.content}"
			puts "Date: #{post.date}"
			puts "Author: #{post.author}"
		end
	end
		
end

class BlogPost < Blog
	
	# blog post constructor
	def initialize(title, content, date, author)
		
		@title = title
		@content = content
		@date = date
		@author = author
		
	end
	
	
	def self.create_new
		
		again = 'Y'
		

		while(again =='Y')
  		#collect data	into temp variables
			puts "Enter blog title: "
			title = gets	
	
			puts "Enter content: "
			content = gets
			
			date = Time.now
	
			puts "Enter author: "
			author = gets
			
			# call the constructor create new post and pass the collected info 
			post = self.new(title, content, date, author)
			
			# save post to array
			BlogPost.save(post)
	
			puts "Do you want to create another blog post? [Y/N]"
			again = gets.chomp.upcase
	
		end
		
	end
	
end

BlogPost.create_new
Blog.current_count

