=begin
def piglatinize(string)
  a = string.split("")
  b = a.map {|word| piglatinize_word(word)}
  b.join("")
end

def piglatinize_word(word)
  first_letter = word[0].downcase

  if ["a", "e", "i", "o", "u"].include?(first_letter)
    "#{word}ae"
  else
    consonants = []
    consonants << word[0]

    if ["a", "e", "i", "o", "u"].include?(word[1]) == false
      consonants << word[1]
      if ["a", "e", "i", "o", "u"].include?(word[2]) == false
        consonants << word[2]
      end
    end
    "#{word[consonants.length -1] + consonants.join + "ae"}"
  end
end
=end

def translate(str)
	vowel = ["a", "e", "i", "o", "u"]

	two_letter_consonants = ["ch", "sh", "qu", "th", "br"]
  	three_letter_consonants = ["thr", "sch", "squ"]
  
  	word = str.split(" ")
  	result = [];

  	word.each do |word|
  #if word starts with a vowel
		if vowel.include? word[0]
      		result.push word << "ae"
  #else word starts with a consonant
    else
    #checks for special consonants
      	if three_letter_consonants.include? word[0] + word[1] + word[2]
        	first_three_letters = word.slice!(0,3)
        	result.push word << first_three_letters << "ae"
      	elsif two_letter_consonants.include? word[0] + word[1]
        	first_two_letters = word.slice!(0,3)
        	result.push word << first_two_letters << "ae"