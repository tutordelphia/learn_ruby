class Book
	attr_reader :title
	def title=(title)
		@title = titleize(title)
	end


	def titleize(words)
		word_list = words.split
		word_list.each_with_index do |word, index| 
			if (not ['and', 'or', 'a', 'an', 'over', 'the', 'of', 'in'].include? word) or index==0
				word.capitalize! 
			end
		end
		word_list.join(" ")
	end
end
