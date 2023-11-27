puts("Завдання №1")
puts("2.Дано цілочисельний масив. Необхідно вивести спочатку його елементи з непарними індексами, а потім - парними.")
def print_odd_even_elements(arr)
  odd_elements = arr.select.with_index { |elem, index| index.odd? }
  even_elements = arr.select.with_index { |elem, index| index.even? }

  puts "Елементи з непарними індексами: #{odd_elements.join(', ')}"
  puts "Елементи з парними індексами: #{even_elements.join(', ')}"
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print_odd_even_elements(array)


puts("\n5.Дано цілочисельний масив. Перетворити його, додавши до парних чисел перший елемент. Перший і останній елементи масиву не змінювати.")
def transform_array(arr)
  first_element = arr.first

  transformed_array = arr.map.with_index do |elem, index|
    if index != 0 && index != arr.length - 1 && elem.even?
      elem + first_element
    else
      elem
    end
  end

  puts "Вихідний масив: #{arr.join(', ')}"
  puts "Перетворений масив: #{transformed_array.join(', ')}"
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
transform_array(array)

puts("\n9.Дано цілочисельний масив. Замінити всі додатні елементи на значення мінімального.")
def replace_positive_with_min(arr)
  min_value = arr.min

  replaced_array = arr.map { |elem| elem.positive? ? min_value : elem }

  puts "Вихідний масив: #{arr.join(', ')}"
  puts "Масив зі заміною додатніх на мінімальне значення: #{replaced_array.join(', ')}"
end

array = [1, -2, 3, -4, 5, -6]
replace_positive_with_min(array)

puts("\n13.Дано цілочисельний масив. Здійснити циклічний зсув елементів масиву вліво на одну позицію.")
def left_rotate_array(arr)
  rotated_array = arr.rotate(1)

  puts "Вихідний масив: #{arr.join(', ')}"
  puts "Масив після циклічного зсуву вліво: #{rotated_array.join(', ')}"
end

array = [1, 2, 3, 4, 5]
left_rotate_array(array)

puts("\n29.Дано цілочисельний масив. Упорядкувати його за зростанням.")
def sort_array_in_ascending_order(arr)
  sorted_array = arr.sort

  puts "Вихідний масив: #{arr.join(', ')}"
  puts "Відсортований масив за зростанням: #{sorted_array.join(', ')}"
end

array = [5, 2, 8, 1, 3]
sort_array_in_ascending_order(array)

puts("\n33.Дано цілочисельний масив. Знайти індекс мінімального елемента.")
def find_index_of_min_element(arr)
  min_index = arr.index(arr.min)

  puts "Масив: #{arr.join(', ')}"
  puts "Індекс мінімального елемента: #{min_index}"
end

array = [4, 3, 7, 2, 5]
find_index_of_min_element(array)

puts("\n49.Дано цілочисельний масив. Знайти кількість елементів, розташованих перед першим мінімальним.")
def count_elements_before_min(arr)
  min_index = arr.index(arr.min)

  if min_index.nil?
    puts "Масив порожній."
  else
    elements_before_min = arr[0...min_index]
    count = elements_before_min.length

    puts "Масив: #{arr.join(', ')}"
    puts "Кількість елементів перед першим мінімальним: #{count}"
  end
end

array = [4, 5, 3, 1, 7]
count_elements_before_min(array)

puts("\n59.Дано цілочисельний масив. Знайти кількість елементів, між першим і останнім мінімальним.")
def count_elements_between_min(arr)
  min_index_first = arr.index(arr.min)
  min_index_last = arr.rindex(arr.min)

  if min_index_first.nil?
    puts "Масив порожній."
  else
    elements_between_min = arr[(min_index_first + 1)...min_index_last]
    count = elements_between_min.length

    puts "Масив: #{arr.join(', ')}"
    puts "Кількість елементів між першим і останнім мінімальним: #{count}"
  end
end

array = [6, 3, 8, 2, 3, 1, 7, 4, 1, 5]
count_elements_between_min(array)

puts("\n61.Дано цілочисельний масив. Знайти два найбільші елементи.")
def find_two_largest_elements(arr)
  if arr.length < 2
    puts "Масив повинен містити принаймні два елементи."
    return
  end

  two_largest_elements = arr.sort[-2..-1]

  puts "Масив: #{arr.join(', ')}"
  puts "Два найбільших елементи: #{two_largest_elements.join(', ')}"
end

array = [7, 1, 4, 2, 5, 10, 3, 8, 9, 6]
find_two_largest_elements(array)

puts("\n77.Дано ціле число. Знайти суму його цифр.")
def sum_of_digits(number)
  digits = number.to_s.chars.map(&:to_i)

  sum = digits.sum

  puts "Число: #{number}"
  puts "Сума його цифр: #{sum}"
end

num = 239875
sum_of_digits(num)

puts("\n86.Дано цілочисельний масив. Знайти середнє арифметичне його елементів.")
def average_of_array(arr)
  if arr.empty?
    puts "Масив порожній. Середнє арифметичне не визначено."
  else
    sum = arr.sum
    average = sum.to_f / arr.length

    puts "Масив: #{arr.join(', ')}"
    puts "Середнє арифметичне його елементів: #{average}"
  end
end

array = [6, 1, 3, 4, 5]
average_of_array(array)

puts("\n91.Дано цілочисельний масив і число К. Якщо існує елемент, менший за К, то вивести true; в іншому випадку вивести false.")
def element_less_than_k_exists(arr, k)
  exists = arr.any? { |element| element < k }

  puts "Масив: #{arr.join(', ')}"
  puts "Чи існує елемент, менший за #{k}? #{exists}"
end

array = [8, 3, 2, 7, 4]
k_value = 5
element_less_than_k_exists(array, k_value)

puts("\n95.Дано цілочисельний масив і число К. Вивести кількість елементів, менших за К.")
def count_elements_less_than_k(arr, k)

  count = arr.count { |element| element < k }

  puts "Масив: #{arr.join(', ')}"
  puts "Кількість елементів, менших за #{k}: #{count}"
end

array = [4, 3, 9, 8, 1]
k_value = 7
count_elements_less_than_k(array, k_value)

puts("\n102.Дано цілочисельний масив. Перевірити, чи утворює він зростаючу послідовність.")
def is_increasing_sequence(arr)
  increasing = arr.each_cons(2).all? { |a, b| a < b }

  puts "Масив: #{arr.join(', ')}"
  puts "Утворює зростаючу послідовність? #{increasing}"
end

array1 = [1, 2, 3, 4, 5]
array2 = [1, 2, 2, 4, 5]

is_increasing_sequence(array1)
is_increasing_sequence(array2)

puts("\n109.Дано цілочисельний масив. Знайти мінімальний і максимальний елемент у масиві.")
def find_min_max_elements(arr)
  if arr.empty?
    puts "Масив порожній. Мінімальний і максимальний елементи не визначені."
  else
    min_element = arr.min
    max_element = arr.max

    puts "Масив: #{arr.join(', ')}"
    puts "Мінімальний елемент: #{min_element}"
    puts "Максимальний елемент: #{max_element}"
  end
end

array = [4, 6, 8, 2, 3, 11, 50, 7, 9, -5]
find_min_max_elements(array)