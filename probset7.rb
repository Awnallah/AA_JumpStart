#Write a function summation that takes a number and returns the summation of all positive
#integers upto and including that number.

def summation(number)
	(0..number).reduce(:+)

end

puts "\nSummation:\n" + "*" * 15 + "\n"
puts summation(0) == 0
puts summation(1) == 1
puts summation(2) == 3
puts summation(15) == 120




#write a function that takes a number n and returns the highest prime factor of
#that number. Hint: Helper function.

def highest_prime_factor(n)
	m=n-1
	while m>0
		return m if is_prime(m) and n%m==0
		m -=1
	end
end

def is_prime(num)
	return false if num<2
	# (num-1).downto(2) do |factor|
	# 	return false if num%factor==0
	# end
	# true
	##That was an O(n^2),for efficiency:
	(2...num).to_a.none? { |factor| num%factor==0 }

end




puts "\nHighest prime factor:\n" + "*" * 15 + "\n"
puts highest_prime_factor(4) == 2
puts highest_prime_factor(6) == 3
puts highest_prime_factor(28) == 7
#puts highest_prime_factor(69842) == 743

#write a boolean function zero_sum? that takes an array of integers and returns
#true if 2 elements in the array sum to zero.

def zero_sum?(array)
	(0...array.length).each do |idx1|
		((idx1+1)...array.length).each do |idx2|
			return true if array[idx1]+array[idx2]==0
		end
	end
	false
end

puts "\nZero Sum:\n" + "*" * 15 + "\n"
puts zero_sum?([1, -1]) == true
puts zero_sum?([1,1,0,2,1]) == false
puts zero_sum?([1,1,0,2,1,0]) == true
puts zero_sum?([2,3,4,-3,1]) == true



#write a function missing_letters that take in a phrase and returns an array of
#letters in alphabetical order that are not contained in that phrase

def missing_letters(phrase)
	('a'..'z').each {|el| puts el }

end

puts "\nMissing Letters\n" + "*" * 15 + "\n"
puts missing_letters("abcdefghijklmnopqrstuvwxyz") == []
puts missing_letters("abcdefghiklmnopqrstuvwxyz") == ["j"]
puts missing_letters("abcdefghiklmnopstuvwxyz") == ["j", "q", "r"]
puts missing_letters("we the people of the united states in order to form a more perfect union") == "bgjkqvxyz".split("")


#Write a function count_odds that takes an array of numbers and returns the count
#of odd numbers in that array
def count_odds(numbers_array)

end

puts "\nCount Odds\n" + "*" * 15 + "\n"

puts count_odds([]) == 0
puts count_odds([2]) == 0
puts count_odds([1,2]) == 1
puts count_odds([1,2,3,4,5,6]) == 3
puts count_odds([123,42,23,71,0]) == 3

#Write a function delete_first_letter that takes a phrase and a letter to hide and removes
#the first instances of that letter
def delete_first_letter(phrase, letter)

end

puts "\nHide Letter\n" + "*" * 15 + "\n"
puts delete_first_letter("abc", "d") == "abc"
puts delete_first_letter("abc", "b") == "ac"
puts delete_first_letter("hello, my name is Tevy", "e") == "hllo, my name is Tevy"