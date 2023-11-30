puts("\nЗавдання №1")
puts("Cтворити програму Ruby для пошуку найчастішого елемента в масиві:\n\n")
def find_most_frequent_element(array)
  puts "Масив: #{array}"

  frequency = Hash.new(0)
  array.each { |element| frequency[element] += 1 }
  max_frequency = frequency.values.max
  most_frequent_elements = frequency.select { |a, b| b == max_frequency }.keys

  puts "Найчастіший елемент: #{most_frequent_elements.join(', ')}\n\n"
end

array1 = [17, 8, 12, 5, 23, 2, 19, 14, 6, 1, 24, 9, 11, 3, 20, 16, 7, 22, 10, 4, 18, 13, 25, 15, 21, 8, 2, 1, 14, 19]
array2 = [12, 5, 23, 8, 19, 3, 16, 7, 2, 14, 21, 9, 1, 18, 11, 4, 25, 10, 6, 20, 15, 22, 13, 17, 24, 8, 3, 5, 9, 1]

find_most_frequent_element(array1)
find_most_frequent_element(array2)