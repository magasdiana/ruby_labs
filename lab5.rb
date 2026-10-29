# Лабораторна робота 5
# Варіант 23. Кухонні прилади

module ApplianceInfo
  def show_info
    puts "Інформація про кухонний прилад"
  end
end

class KitchenAppliance
  include ApplianceInfo

  attr_reader :name
  attr_accessor :power, :price

  def initialize(name, power, price)
    @name = name
    self.power = power
    self.price = price
  end

  def power=(value)
    raise ArgumentError, "Потужність має бути додатною" unless value > 0
    @power = value
  end

  def price=(value)
    raise ArgumentError, "Ціна не може бути від'ємною" if value < 0
    @price = value
  end

  def turn_on
    puts "#{@name}: прилад увімкнено"
  end

  def work
    puts "#{@name}: виконує свою роботу"
  end

  def show_info
    puts "Прилад: #{@name}, потужність: #{@power} Вт, ціна: #{@price} грн"
  end
end

class Blender < KitchenAppliance
  attr_accessor :speed

  def initialize(power, price, speed)
    super("Блендер", power, price)
    @speed = speed
  end

  def work
    super
    puts "Блендер подрібнює та змішує продукти на швидкості #{@speed}"
  end

  def blend
    puts "Блендер готує фруктовий коктейль"
  end
end

class CoffeeMaker < KitchenAppliance
  attr_accessor :cups

  def initialize(power, price, cups)
    super("Кавоварка", power, price)
    @cups = cups
  end

  def work
    super
    puts "Кавоварка готує #{@cups} чашок кави"
  end

  def make_coffee
    puts "Кавоварка готує ароматну каву"
  end
end

class Multicooker < KitchenAppliance
  attr_accessor :temperature

  def initialize(power, price, temperature)
    super("Мультиварка", power, price)
    @temperature = temperature
  end

  def work
    super
    puts "Мультиварка готує страву за температури #{@temperature} °C"
  end

  def cook
    puts "Мультиварка готує обід"
  end
end

puts " Створення кухонних приладів "

blender = Blender.new(800, 2500, 3)
coffee_maker = CoffeeMaker.new(1000, 3500, 2)
multicooker = Multicooker.new(900, 3000, 180)

puts "\n=== Геттери та сеттери ==="
puts "Назва приладу: #{blender.name}"
puts "Початкова потужність: #{blender.power} Вт"

blender.power = 1000
blender.price = 2700

puts "Нова потужність: #{blender.power} Вт"
puts "Нова ціна: #{blender.price} грн"

puts "\n Інкапсуляція "
puts "Доступ до даних здійснюється через методи класу."
puts "Прямий доступ до @power ззовні об'єкта недоступний."

puts "\n Успадкування та перевизначення методів "
blender.turn_on
blender.work
coffee_maker.work
multicooker.work

puts "\n Специфічні методи приладів"
blender.blend
coffee_maker.make_coffee
multicooker.cook

puts "\n Поліморфізм "
appliances = [blender, coffee_maker, multicooker]

appliances.each do |appliance|
  appliance.work
end

puts "\n Робота з модулем "
coffee_maker.show_info

puts "\n Перевизначення синглтон-методу "
def blender.special_mode
  puts "Блендер працює в індивідуальному турборежимі"
end

blender.special_mode

puts "\n Інший блендер не має цього методу:"
another_blender = Blender.new(600, 1800, 2)
puts another_blender.respond_to?(:special_mode)

puts "\n Завершення роботи"
