def reverser
	string = yield.split(/\W+/)
	string.map {|x| x.reverse}.join" "
end

def adder(num=1)
	yield+num
end

def repeater(i=1)
	i.times do yield
	end
end