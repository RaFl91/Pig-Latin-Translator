def translate(str)
	vowels = ["a", "e", "i", "o", "u"]
	three_consonants = ["thr", "sch", "squ"]
	two_consonants = ["ch", "sh", "qu", "th", "br"]

	words = str.split(" ")

	result = []

	words.each do |word|
	#if word starts with vowel
		if vowels.include? word[0]
			result.push word << "ae"
	#if word starts with consonants
		else
		#three consonants
			if three_consonants.include? word[0] + word[1] + word[2]
				first_three = word.slice!(0,3)
				result.push word << first_three << "ae"
		#two consonants
			elsif two_consonants.include? word[0] +word[1]
				first_two = word.slice!(0,2)
				result.push word << first_two << "ae"
			else
		#one consonant
				first_letter = word.slice(0)
				result.push word << first_letter << "ae" 
			end
		end
	end

end
translate("square")