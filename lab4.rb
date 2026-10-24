#Завдання 1
puts "Завдання 1"
def delivery_price(weight = 1)
  weight * 40
end

puts delivery_price
puts delivery_price(3)

def delivery_price(weight = 1)
  weight * 60 + 50
end

puts delivery_price(3)

#Завдання 2
puts "Завдання 2"
def booking(room_price:, nights:, breakfast: false)
  total = room_price * nights

  if breakfast
    total += 250 * nights
  end

  puts "Вартість бронювання: #{total} грн"
end

booking(room_price: 1200, nights: 2, breakfast: true)
booking(room_price: 1500, nights: 3)

#Завдання 3
puts "Завдання 3"
def valid_password?(password)
  password.length >= 8 && password.match?(/\d/)
end

puts valid_password?("ruby123")
puts valid_password?("ruby2026!")

#Завдання 4
puts "Завдання 4"
def add_money(first, second)
  first + second
end

def increase_balance(balance, amount)
  balance += amount
end

puts add_money(100, 50)
puts increase_balance(200, 25)

#Завдання 5
puts "Завдання 5"
def average_temperature(temperatures)
  temperatures.sum.to_f / temperatures.length
end

def maximum_temperature(temperatures)
  temperatures.max
end

temperatures = [18, 21, 19, 24, 20, 22, 17]

puts format("%.1f", average_temperature(temperatures))
puts maximum_temperature(temperatures)

#Завдання 6
puts "Завдання 6"
def average_temperature(temperatures)
  temperatures.sum.to_f / temperatures.length
end

def maximum_temperature(temperatures)
  temperatures.max
end

temperatures = [18, 21, 19, 24, 20, 22, 17]

puts format("%.1f", average_temperature(temperatures))
puts maximum_temperature(temperatures)

# Завдання 7
puts "Завдання 7"

def apply_discount(price)
  yield(price)
end

discount1 = apply_discount(1000) { |price| price * 0.9 }

discount2 = apply_discount(1000) do |price|
  price - 150
end

puts discount1
puts discount2

# Завдання 8
puts "Завдання 8"

def show_weather
  yield
end

def describe_temperature(temperature)
  yield(temperature)
end

show_weather do
  puts "Сьогодні сонячно"
end

describe_temperature(18) do |temperature|
  puts "Температура: #{temperature} градусів"
end

# Завдання 9
puts "Завдання 9"

def proc_return_example
  action = Proc.new { return "Proc завершив метод" }

  action.call

  "Цей рядок не виконається"
end

proc_without_args = Proc.new { puts "Proc без аргументів" }
proc_with_args = Proc.new { |a, b| puts "Сума: #{a.to_i + b.to_i}" }

proc_without_args.call
proc_with_args.call(5)
proc_with_args.call(5, 3)

puts proc_return_example

lambda_without_args = lambda { puts "Lambda без аргументів" }
lambda_with_args = lambda { |a, b| puts "Добуток: #{a * b}" }

lambda_without_args.call
lambda_with_args.call(4, 3)

begin
  lambda_with_args.call(4)
rescue ArgumentError
  puts "Lambda вимагає два аргументи"
end

def lambda_return_example
  action = lambda { return "Lambda завершилася" }

  puts action.call

  "Метод продовжив виконання"
end

puts lambda_return_example