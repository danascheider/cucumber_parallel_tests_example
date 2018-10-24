Given('an adder instance') do
  @adder = Adder.new
end

Given('a multiplier instance') do
  @multiplier = Multiplier.new
end

When('I add {int} + {int}') do |num1, num2|
  @result = @adder.add(num1, num2)
end

When('I multiply {int} * {int}') do |num1, num2|
  @result = @multiplier.multiply(num1, num2)
end

Then('the result should be {int}') do |result|
  expect(@result).to eq result
end