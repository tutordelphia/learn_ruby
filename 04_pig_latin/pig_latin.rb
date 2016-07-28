def translate word_string
	output_array = []
	word_string.split.each do 
		|word| output_array.push (translateWord(word))
	end
	output_array.join(" ")

end

def translateWord word
	first_vowel = word.index(/[aeiou]/)
	if word.start_with?("qu")
		first_vowel = 2 
	end
	if word =~/[^aeiou]qu/
		first_vowel = 3 
	end
	return word[first_vowel..-1]+word[0, first_vowel]+"ay"
end