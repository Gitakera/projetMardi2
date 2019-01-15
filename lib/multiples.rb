

def is_multiple_of_3_or_5?(n)
  # plein d'autres calculs
	c=(n%3==0 || n%5==0)?true:false
  return c
end



def sum_of_3_or_5_multiples(n)
	somme=0
  # lancement d'une boucle qui va de 0 au chiffre n EXCLU (car on est sur du strictement inférieur)
  # cette boucle indente à chaque tour une variable (par exemple i)
	if (n.is_a? Integer) && (n>=0)
	for i in 0..n-1
	   if is_multiple_of_3_or_5?(i)
      # si la réponse est "true", alors je rajoute la valeur de i à une somme que je retournerais en fin de fonction (mon return final).
		somme=somme+i
           end	
	end
   
  #fin de la boucle
	else
		somme="Yo ! Je ne prends que les entiers naturels. TG"
	
	end	
  return somme
end

puts sum_of_3_or_5_multiples(-23) #=> 33
#puts sum_of_3_or_5_multiples(10) #=> 23
