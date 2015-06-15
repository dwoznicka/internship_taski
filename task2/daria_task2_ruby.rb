def minimum(x, y, z)
	if x >= y
		if y >= z
			return z
		else 
			return y
		end
	else
		if x >= z
			return z
		else 
			return x
		end
	end
end

def levenshtein(word1, word2)
	cost = 0
	tablica = []
	word1length = word1.length
	word2legth = word2.length

	(0..word1length).each do |i|
		tablica[i] = []
	end

	(0..word1length).each do |i|
		tablica[i][0] = i
	end

	(1..word2legth).each do |j|
		tablica[0][j] = j
	end

	(1..word1length).each do |i|
		(1..word2legth).each do |j|
			if(word1[i-1,1]==word2[j-1, 1])
				cost = 0
			else 
				cost = 1
			end
			tablica[i][j] = minimum((tablica[i-1][j] + 1) , (tablica[i][j-1] + 1) , (tablica[i-1][j-1] + cost) )
		end
	end
	return tablica[word1length][word2legth]
end

puts levenshtein(ARGV[0], ARGV[1])