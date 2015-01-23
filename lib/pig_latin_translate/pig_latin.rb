class String
	def translate

		self.split(" ").map { |word| pig_latin_translator(word) }.join(" ")

	end


	def pig_latin_translator (s)

		if s[0..1] == "qu"   
			 ( s[2..s.length] << s[0..1] + "ay" ) 

		elsif s[1..2] == "qu" 
			 ( s[3..s.length] << s[0..2] + "ay")

		elsif s =~ ( /\A[^aeiou]{3}/ ) 
			 ( s[3..s.length] << s[0..2] + "ay" )

		elsif s =~ ( /\A[^aeiou]{2}/ )
			 ( s[2..s.length] << s[0..1] + "ay" )

		elsif s =~ ( /\A[^aeiou]/ ) 
			 ( s[1..s.length] << s[0] + "ay" )

		elsif s =~ ( /\A[aeiou]/ ) 
			 ( s << "ay" )
		end
	end
end