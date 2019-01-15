def caesar_cipher(text,entier)
if (text.is_a? Integer)
  text_crypted="Veuillez saisier du text svp "
else
  #A=65
  #B=90
  @texte_crypted=""

  for e in 0..text.length-1
	i=text[e]
    	#prend la position des car en majuscul
	if((i.ord>=65)&&(i.ord<=90))
		decaled=i.ord+entier
		
		if(decaled>90)
		 decaled=64+decaled-90	
		end
		c=@text_crypted
			@text_crypted="#{c}#{decaled.chr}"
	puts decaled
		
	elsif((i.ord>=97)&&(i.ord<=122))
			decaled=i.ord+entier
puts decaled.chr
			if(decaled>122)
			 decaled=96+decaled-122	
			end
			c=@text_crypted
			@text_crypted="#{c}#{decaled.chr}" #note: tsy mety var+text.chr ->lazainy fa methode ny plus, donc tsy mety concatenation

		
	else((i.ord<=65)&&(i.ord>=90)&&(i.ord<=97)&&(i.ord>=122))
		@text_crypted=@text_crypted+""+i

	end

  end

end
r=@text_crypted
return r

end

puts caesar_cipher('A b',1)
