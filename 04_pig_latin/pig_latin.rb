def translate(word)
	vowels = %w{ a e i o u }
	if vowels.include?(word[0])
		return word + "ay"
	elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
		word = word+word[0]+word[1]+"ay"
		word[0]=''
		word[0]=''
		return word
	end
	if !vowels.include?(word[0])
		word = word+word[0]+"ay"
		word[0]=''
		return word
	end


end


# def translate(word)
# 	vowels = %w{ a e i o u }
# 	if vowels.include?(word[0])
# 		pigstring = "#{word}#{word[0]}y"
# 		return pigstring
# 	elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
# 		pigstring = "#{word}#{word[0]}#{word[1]}ay"
# 		return pigstring[2..-1]
# 	else 	
# 		pigstring = "#{word}#{word[0]}ay"
# 		return pigstring[1..-1]
# 	end
# end

p translate("cherry")