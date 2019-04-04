
def rnb

puts" Balance ton dé"
n= rand (1..6)

end 

def decision(n,i)
if 	
	i==0 and n==1
	i=i
else
	case n
		when 1
		 	i -= 1
		 	puts "descends d'une marche"
		when 2, 3, 4
		 	i = i
		 	puts"reste où tu es"
		else
		 	i+=1
		 	puts "monte d'une marche"
		end
		puts "maintenant ta position est #{i}"
	end
end
def perform
	i = 0
	while i < 10
		nb = rnb
		puts "Tu as eu le chiffre #{nb}"
		decision(nb,i)
	end
end


perform
			




