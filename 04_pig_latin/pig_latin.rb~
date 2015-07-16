def translate(string)
	new_string = ""
	vowel_index = 0
	string = string.split(" ")
	string.each {|word|
		word = word.split("")
		word.each_with_index{ |letter, index|
			if letter == "a" or letter == "e" or letter == "i" or letter == "o" or letter == "u"
				vowel_index = index
				break
			end
		}
		word = word.join
		if word[0] == "a" or word[0] == "e" or word[0] == "i" or word[0] == "o" or word[0] == "u"
			new_string += word + "ay" + " "
		elsif word[vowel_index] == "u" && word.include?("qu")
			new_string += word[(vowel_index+1)..(word.length-1)] + word[0..(vowel_index)] + "ay" + " "
		else
			new_string += word[vowel_index..(word.length-1)] + word[0..(vowel_index-1)] + "ay" + " "
		end
	}
	new_string = new_string.strip
	new_string
end
