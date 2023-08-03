class Solver
  def factorial(number)
    raise ArgumentError, 'Factorial is not defined for negative integers.' if number.negative?

    result = 1
    (1..number).each { |i| result *= i }
    result
  end
end
