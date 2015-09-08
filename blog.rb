class Blog

	@@number_of_posts = 0
	@@blog_post_array = []
	
	def self.save_blog_post(blog_post)
		@@blog_post_array << blog_post
		@@number_of_posts += 1
	end
	
	def self.publish_blog
		@@blog_post_array.each do |blog_post|
			puts "Title: #{blog_post.title}\nContent: #{blog_post.content}\n\nPublished: #{blog_post.author} by #{blog_post.date}\n\n\n"
		end
	end
	
end

class BlogPost < Blog

	def self.create_all_posts
		new_post = "Y"
		while (new_post == "Y")
			create_blog_post
			puts "Do you want to write another blog post [Y/N]?"
			new_post = gets.chomp
		end
	end
	
	def self.create_blog_post
		blog_post = new
		puts "Please enter a title for your post:"
		blog_post.title = gets.chomp
		puts "Please enter the content of your post:"
		blog_post.content = gets.chomp
		require 'etc'
		blog_post.author = Etc.getlogin()
		blog_post.date = Time.now.strftime("%d/%m/%Y %H:%M")
		save_blog_post(blog_post)
	end
	
	attr_accessor :title, :content, :author, :date
		
end

puts "Do you want to write a blog post [Y/N]?"
create_blog = gets.chomp
if create_blog == "Y"
	BlogPost.create_all_posts
	BlogPost.publish_blog
else
	puts "See you another day"
end