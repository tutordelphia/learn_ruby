class Timer
	attr_accessor :seconds
 	def initialize
 		@seconds = 0
 	end

 	def time_string
 		seconds_copy = @seconds
 		formatted_string = ""
 		3.times do 
 			formatted_string = self.padded(seconds_copy % 60) + ":" +formatted_string
 			seconds_copy = seconds_copy / 60
 		end
 		formatted_string.chop

 	end

 	def padded seconds
 		if seconds<10
 			return '0'+seconds.to_s
 		end

 		seconds.to_s
 	end


end
