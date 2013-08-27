def echo(echostring)
	echostring
end

def shout(shoutstring)
	shoutstring.upcase
end

def repeat(repeatstring,num=2)
	num.times.collect{repeatstring}.join(' ')
end

def start_of_word(startword,n)
	startword[0,n]
end

def first_word(firststring)
	firststring.split[0]
end

def titleize(titlestring)
  lowercase_words = %w{a an the and but or for over of}
  titlestring.split.each_with_index.map{|x, index| lowercase_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")
end