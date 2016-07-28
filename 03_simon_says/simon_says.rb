def echo a
	a
end

def shout a
	a.upcase
end


def repeat a, times=2
	a+(" "+a)*(times-1)
end

def start_of_word(word, num_letters)
	word[0..num_letters-1]
end

def first_word(words)
	words.split[0]
end

def titleize(words)
	word_list = words.split
	word_list.each_with_index do |word, index| 
		if (not ['and', 'or', 'a', 'over', 'the'].include? word) or index==0
			word.capitalize! 
		end
	end
	word_list.join(" ")
end
