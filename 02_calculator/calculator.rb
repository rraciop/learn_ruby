def add(num1,num2)
	return num1+num2
end

def subtract(num1,num2)
	return num1-num2
end

def sum(arr)
	arr.inject(0, :+)
end

def mult(arr)
	arr.inject(0, :*)
end

def factorial(num)
	if num = 0
	return 0
	elsif num = 1
	return 1
	end
	num.factorial*(num-1).factorial
end