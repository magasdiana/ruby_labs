
# Завдання 11. Спосіб 1

def detect_type_1(path)
  File.open(path, "rb") do |file|
    bytes = file.read(8)
    hex = bytes.unpack1("H*")

    if hex.start_with?("89504e47")
      puts "Тип файла: PNG"
    elsif hex.start_with?("ffd8ff")
      puts "Тип файла: JPEG"
    elsif hex.start_with?("25504446")
      puts "Тип файла: PDF"
    else
      puts "Невідомий тип файла"
    end
  end
end

# Завдання 11. Спосіб 2

def detect_type_2(path)
  File.open(path, "rb") do |file|
    bytes = file.read(8)
    hex = bytes.unpack1("H*")

    type = case hex
           when /\A89504e47/
             "PNG"
           when /\Affd8ff/
             "JPEG"
           when /\A25504446/
             "PDF"
           else
             "Невідомий тип файла"
           end

    puts "Тип файла: #{type}"
  end
end

print "Введіть шлях до файла: "
path = gets.chomp

# detect_type_1(path)
detect_type_2(path)
