class Temperature

	def initialize(f_or_c={})
		@f_or_c = f_or_c
		@f_or_c[:c] = f_or_c[:c]
		@f_or_c[:f] = f_or_c[:f]
	end

	def self.in_celsius(arg)
		new({:c => arg})
	end

	def self.in_fahrenheit(arg)
		new({:f => arg})
	end

	def to_fahrenheit
		if @f_or_c[:c]==nil
			return @f_or_c[:f]
		end
		@f_or_c[:f] = (@f_or_c[:c]) * (9.0/5.0) + 32
		@f_or_c[:f]
	end

	def to_celsius
		if @f_or_c[:f]==nil
			return @f_or_c[:c]
		end
		@f_or_c[:c]=(@f_or_c[:f] - 32) * (5.0 / 9.0)
		@f_or_c[:c]
	end



end

class Celsius < Temperature
		
	def initialize(c)
			@f_or_c={}
			@f_or_c[:c]=c
	end
end

class Fahrenheit < Temperature
		
	def initialize(f)
			@f_or_c={}
			@f_or_c[:f]=f
	end
end

Temperature.new({:f => 50})
