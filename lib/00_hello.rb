def ask_first_name
  puts "Salut tu t'appelles comment ?"
  return gets.chomp
end


def say_hello(first_name)
  puts "Bonjour, #{first_name}!"
end


puts say_hello(ask_first_name)
