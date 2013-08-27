class Array
	def sum
		if self ==[]
		return 0
		else return self.inject(:+)
		end
	end

	def square
	self.map {|x| x **2}
	end

	def square!
	self.map! {|x| x **2}
	end
end