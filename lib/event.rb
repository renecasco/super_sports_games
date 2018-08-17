class Event
  attr_reader :name,
              :ages

  def initialize(name, ages)
    @name  = name
    @ages  = ages
  end

  def max_age
    ages.max(1)
  end

  def min_age
    ages.min(1)
  end

  def average_age
     (ages.sum.to_f / ages.count).round(2)
  end

  def standard_deviation_age
      sum_of_integers = ages.sum
      number_of_integers = ages.count
      mean = average_age
      calculations = ages.map{ |age| (age -= mean) ** 2}
      sum_of_calculations = calculations.sum
      final_division = sum_of_calculations/number_of_integers
      standard_deviation = Math.sqrt(final_division).round(2)
  end
end
