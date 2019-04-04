
def rnb
	puts"Balance ton dé"
	n= rand (1..6)
end

def decision(n,i)
case n
	when 1
	 	i = -1
	 	puts "Descends d'une marche"
	when 2, 3, 4
	 	i = 0
	 	puts"Reste où tu es"
	else
	 	i=1
	 	puts "Monte d'une marche"
end
puts "Tu dois faire #{i} pas"
return i
end

def perform
	i = 0
	k=1
	while i<10
		puts "---------------"
		puts "Voici la tour #{k}"
		puts "Ta position au début de tour est #{i}"
		nb = rnb
		puts "Tu as eu le chiffre #{nb}"
		i = i + decision(nb,i)
		if i < 0
			i = 0
		end
		puts "Ta position en fin de tour est #{i}"
		k += 1
	end
	puts "--------FIN D'UNE PARTIE--------"
	return k
end


def karray
	kr=[]
	100.times do
		kr << perform
	end
	return kr
end

def average_finish_time
	sum = 0
	the_array = karray
	the_array.each do |item|
	sum += item
	end
	n = karray.length
	avg = sum / n
	puts""
	puts"-----STATISTIQUES-------"
	puts "Pour cette fois-ci, le jeu prend en moyenne #{avg} tours pour finir les 10 marches"
end

average_finish_time
