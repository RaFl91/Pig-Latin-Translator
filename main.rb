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
		end
	end

end
translate('air')