def vérification
  puts "Définis un mot de passe"
  definition = gets.chomp
  puts "Maintenant saisie ton mot de passe"
  saisie = gets.chomp
  while saisie != definition do
    puts"Mot de passe incorrecte. Resaisie ton mot de passe"
    saisie = gets.chomp
  end
end

def sign_up
    puts "définis-ton mot de passe."
    return gets.chomp
end


def welcome_screen
  puts "-------------"
  puts "> Bienvenue dans ton espace NSA"
  puts "> 10,2 millards de dollars sur le compte de"
  puts "> Harry S. Truman"
  puts "> Son numéro de compte est"
  puts "> #{$mdp}"

end

$mdp = sign_up

def log_in
  $mdp
  puts "saisie ton mot de passe."
  saisie = gets.chomp
  while saisie!=$mdp
    puts "Mot de passe incorrecte. Resaisie"
    saisie = gets.chomp
  end
  welcome_screen
end

log_in
