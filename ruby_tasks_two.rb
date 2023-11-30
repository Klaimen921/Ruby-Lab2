puts("\nЗавдання №2")
puts("Створити програму Ruby для перетворення речення на свинячу латинь:\n\n")
def to_pig_latin(sentence)
  words = sentence.split(/\b/)

  pig_latin_words = words.map do |word|
    if word =~ /\w+/
      first_letter = word.slice!(0)
      word << first_letter.downcase + 'ay'
    else
      word
    end
  end

  pig_latin_sentence = pig_latin_words.join
  puts "\nРезультат: #{pig_latin_sentence.capitalize}"
end

print "Введіть речення, яке ви хочете перетворити на свинячу латинь: "
user_input = gets.chomp

to_pig_latin(user_input)