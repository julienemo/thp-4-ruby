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

def ask_nb
  puts"Combien d'étages veux-tu?"
  return gets.chomp.to_i
end

def get_impair
  puts"Combien d'étages veux-tu?"
  puts"On accepte les chiffres impairs pas trop grand."
  nb = gets.chomp.to_i
  while (nb < 0) or (nb >12) or (nb%2 ==0)
    puts"Mais alors j'ai dit, NOMBRE IMPAIR PAS TROP GRAND."
    nb = gets.chomp.to_i
  end
  return nb
end

def full_pyramid(n)
  i = 1
  while i <= n
    puts " "*(n-i)+"#"*(2*i-1)
    i += 1
  end
end

def full_pyramidiv(n)
  i = n - 1
  while i > 0
    puts " "*(n-i)+"#"*(2*i-1)+" "*(n-i)
    i -= 1
  end
end


def wtf_pyramid(n)
  m = (n+1)/2
  puts ""
  full_pyramid(m)
  full_pyramidiv(m)
  puts ""
end

wtf_pyramid(get_impair)
