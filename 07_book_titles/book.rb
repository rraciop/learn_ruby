class Book

	def title=(string)
		@title=string
		lowercase_words = %w{a in an the and but or for over of}
		@title = @title.split.each_with_index.map{|x, index| lowercase_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")
	end

	def title
 	 @title
	end
end

