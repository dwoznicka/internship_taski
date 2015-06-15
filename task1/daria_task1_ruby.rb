tablica = [1, 1, 1, 2, 1, 2, 3, 3, 5, 7, 7, 7, 7 ,7, 7]
my_hash = Hash.new(0)
tablica.each do |elem|
	my_hash[elem] += 1
end
puts my_hash