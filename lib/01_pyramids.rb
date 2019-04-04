def half_pyramid
  puts "Salut, bienvenue dans ma super pyramide !"
  puts "Combien d'étages veux-tu ?"
  puts "Tu peux en avoir jusqu'a 25"
  puts 'Le programme ne prend en compte que la partie chiffree de ta saisie'
  print "> "
  reponse = (gets.chomp).to_i
  puts ""
  puts "Tu as saisi #{reponse}."
  puts ""
  while (reponse > 25) or (reponse < 1)
    puts "Choisir un chiffre positive inférieur à 25"
    print "> "
    reponse = (gets.chomp).to_i
  end
  puts "Voici ta pyramide :"

  i = 0
  while i <= reponse
    puts " "*(reponse - i) + "#"*i
    i += 1
  end
  puts ""
end

# half_pyramid

def ask_nb
  puts"Combien d'étages veux-tu?"
  return gets.chomp.to_i
end


def full_pyramid(n)
  i = 1
  while i <= n
    puts " "*(n-i)+"#"*(2*i-1)+" "*(n-i)
    i += 1
  end
end

full_pyramid(ask_nb)
