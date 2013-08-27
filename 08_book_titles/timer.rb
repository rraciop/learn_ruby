class Timer

 def initialize
 	@seconds = 0
 end

 def seconds=(num)
 	@seconds=num
 end

 def seconds
 	@seconds
 end

 def time_string
 	x = @seconds
 	secondsdisplay = x%60
 	x /= 60
 	minutes = x%60
 	x /= 60
 	hours = x%24
 	if hours <10
 		hours = "0"+hours.to_s
 	end
 	if minutes <10
 		minutes = "0"+minutes.to_s
 	end
 	if secondsdisplay < 10
 		secondsdisplay = "0"+secondsdisplay.to_s
 	end
 	@time_string = "#{hours}:#{minutes}:#{secondsdisplay}"
 	@time_string
 end
end