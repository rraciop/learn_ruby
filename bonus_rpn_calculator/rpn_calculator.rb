class RPNCalculator

	def initialize
		@num_array=[]
		@value = 0.0
	end

	def push(arg)
		@num_array.push(arg.to_f)
	end

	def plus
		array_check
		@value = @value + @num_array.last(2).inject(:+)
		remove_last
	end

	def minus
		array_check
		@value = @value + @num_array.last(2).inject(:-)
		remove_last
	end

	def divide
		array_check
		@value = @value + @num_array.last(2).inject(:/)
		remove_last
	end

	def times
		array_check
		if @value!=0
			@value = @value * @num_array.last(2).inject(:*)
		else
			@value = @value+1 * @num_array.last(2).inject(:*)
		end
		remove_last
	end

	def remove_last
		@num_array.pop(2)
	end

	def array_check
		if @num_array==[]
		raise "calculator is empty"
		end
	end

	def tokens(string)
		operators = %w{+ * - /}
		@token = string.split.each.map do |x| 
			if operators.include?(x)
			x.to_sym
			else
			x.to_i
			end
		end
	end

	def evaluate(string)
		@value = 0
		string = tokens(string)
		string.each.map do |x|
			if x == :+
			self.plus
			elsif x == :*
			self.times
			elsif x == :/
			self.divide
			elsif x == :-
			self.minus
			elsif x.is_a? Integer
			self.push(x)
			end
		end
		return @value

	end

	def value
		@value
	end

end


