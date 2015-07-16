def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, repeat=2)
	total = word
	word = " " + word
	repeat -= 1
	repeat.times do
		total += word
	end
	total
end

def start_of_word(word, number)
	word[0..(number-1)]
end

def first_word(string)
	start, rest = string.split(" ")
	start
end

def titleize(string)
	string = string.split(" ")
	new_string = ""
	#if there is only one word, make it capital and return
	if string.length == 1
		string = string.join.to_s
		new_string = string[0].upcase + string[1..(string.length-1)] + ""
		new_string
	else
		#capitalize the first word no matter what
		new_string = string[0][0].upcase + string[0][1..(string[0].length-1)] + " "
		#remove the first word from the string so we don't add it twice
		string = string[1..string.length]	
		string.each {|word| 
			if word == "and" or word == "or" or word == "the" or word == "over"
				new_string += word + " "
			else
				new_string += word[0].upcase + word[1..(word.length-1)] + " "
			end}
		new_string = new_string[0..(new_string.length-2)]
		new_string
	end
end
