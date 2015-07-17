class Timer
	attr_accessor :seconds
	
	def initialize
		@seconds = 0
	end
	
	def time_string
		string = ""
		if seconds/60 < 1
			"00:00:" + padding(seconds).to_s
		elsif (seconds/3600) < 1
			"00:" + padding(seconds/60) + ":" + padding(seconds%60)
		else
			padding(seconds/3600).to_s + ":" + padding((seconds/60)%60).to_s + ":" + padding(seconds%60).to_s
		end
	end
			
	def padding number
		if number < 10
			"0" + number.to_s
		else
			number
		end
	end
end
