require 'byebug'

def hello_world
	num =0
	until num == 3
		puts "Hellow World"
		num+=1
	end

end

def is_factor_of(big_number, small_number)
	status = ((big_number % small_number) == 0)
	status
end


is_factor_of(5,1)

def print_factors(num)
	arr= []
	(1..num).each do |el| 
		if is_factor_of(num, el)
			arr.push(el)
		end
	end
	arr
end

def largest_factor(number)
	print_factors(number).max
end

def is_prime?(number)

	(2..number-1).each { |el| return false if number % el ==0 }
end


def rotate(arr, shift)
	negative = true if shift < 0
	arr.reverse! if negative
	shift = shift.abs
	while shift > 0
		temp = arr.pop
		arr.unshift(temp)
		
		shift -=1
	end
	return arr.reverse if negative
	arr
end


def all_uniqs(array1, array2)
		array =[]
		array1.each do |i|
			if !array2.include? i
				array << i
			end
		end
		array2.each {|e| array <<e if (!array1.include? e) }
		array.reverse!
end

#print all_uniqs([2, 5, 7], [1, 2, 7])

def zip_with_indices(array)
	arr = []
	array.each_with_index do |element, index| 
		arr << [element, index]
	end
	arr
end

#puts zip_with_indices([3, 20, 8]) == [[3, 0], [20, 1], [8, 2]]


def first_n_primes(n)
	i = 1
	arr = []
	e=0
	while e < n
		if is_prime?(i)
			arr << i
			e +=1 
		end
		i +=1
	end
	arr
end
#p first_n_primes(7)

def identify_sheep
  sheep = ["Gary", "Adam", "Jacob", "Sam", "Toby", "Billy", "Mandy", "Guinness"]

  index = 0

  while index < sheep.length
    individual_sheep = sheep[index]
    sheep_with_exclamation_point = individual_sheep + "!"
    puts "This sheep is named #{sheep_with_exclamation_point}"
    index += 1
  end

end

identify_sheep
