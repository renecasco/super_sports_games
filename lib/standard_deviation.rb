ages = [24, 30, 18, 20, 41]

sum_of_integers = ages.sum
number_of_integers = ages.count
mean = sum_of_integers/number_of_integers.to_f
calculations = ages.map{ |age| (age -= mean) ** 2}
sum_of_calculations = calculations.sum
final_division = sum_of_calculations/number_of_integers
standard_deviation = Math.sqrt(final_division).round(2)
p standard_deviation
