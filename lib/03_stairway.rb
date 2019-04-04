
def rnb
	puts"Balance ton dé"
	n= rand (1..6)
end

def decision(n,i)
case n
	when 1
	 	i = -1
	 	puts "descends d'une marche"
	when 2, 3, 4
	 	i = 0
	 	puts"reste où tu es"
	else
	 	i=1
	 	puts "monte d'une marche"
end
puts "Tu dois faire #{i} pas"
return i
end

def perform
	i = 0
	k=1
	while i<3
		puts "voici la tour #{k}"
		puts "ta position est #{i}"
		nb = rnb
		puts "Tu as eu le chiffre #{nb}"
		i = i + decision(nb,i)
		if i < 0
			i = 0
		end
		puts "maintenant ta position est #{i}"
		k += 1
	end
end

perform
