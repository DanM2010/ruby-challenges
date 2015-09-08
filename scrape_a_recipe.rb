require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))
puts doc.class

list = doc.css (".components-item")
list.each do |item|
	print item.inner_html
end
