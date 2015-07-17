class Book
	attr_reader :title

	def title=(new_title)
		total = ""
		new_title.split(" ").each_with_index{ |word, index|
			if index == 0
				total += word.capitalize + " "
			elsif word != "and" and word != "or" and word != "in" and word != "of" and word != "the" and word != "a" and word != "an"
				total += word.capitalize + " "
			else
				total += word + " "
			end
		}
		@title = total.strip
	end
end

@book = Book.new
