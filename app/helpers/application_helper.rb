module ApplicationHelper
	def full_title(page_title = '')
		base_title = "EBDV 2016"
		 page_title.empty? ? base_title : page_title + " | " + base_title
	end
end
