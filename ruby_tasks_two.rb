puts("\nЗавдання №2")
puts("\nКалькулятор з основними арифметичними операціями")
def dodavannya(x, y)
  return x + y
end

def vidnimannya(x, y)
  return x - y
end

def mnozhennya(x, y)
  return x * y
end

def dilennya(x, y)
  if y != 0
    return x / y
  else
    return "Помилка: ділення на нуль"
  end
end

print "Введіть перше число: "
num1 = gets.chomp.to_f

print "Введіть друге число: "
num2 = gets.chomp.to_f

puts "Виберіть операцію:"
puts "1. Додавання"
puts "2. Віднімання"
puts "3. Множення"
puts "4. Ділення"
print "Ваш вибір: "
choice = gets.chomp.to_i

case choice
when 1
  result = dodavannya(num1, num2)
  operator = "+"
when 2
  result = vidnimannya(num1, num2)
  operator = "-"
when 3
  result = mnozhennya(num1, num2)
  operator = "*"
when 4
  result = dilennya(num1, num2)
  operator = "/"
else
  puts "Невірний вибір операції"
  exit
end

puts "#{num1} #{operator} #{num2} = #{result}"