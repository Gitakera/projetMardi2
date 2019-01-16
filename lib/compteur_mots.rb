hash_reponse=Hash.new

def check_it(mots,dictionaire)
  hash_response=Hash.new
  nbr=0
  for i in dictionaire
    if(/#{mots}/.match(i)!=nil)
       nbr=nbr+1 
    end
  end
  
  if nbr>0 
   
    hash_response.store(mots,nbr)
  end 
  return hash_response
end 

def word_counter(corpus,dictionary)
  hash_response=Hash.new
    corpus=corpus.downcase
    t=0
    
    for i in dictionary
      dictionary[t]=i.downcase
      t=t+1
    end
    tab_corpus=corpus.split(' ').uniq
    for i in dictionary
      hash_response.merge!(check_it(i,tab_corpus ))
    end
  return hash_response
end

puts word_counter("below",["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])
puts word_counter("Howdy partner, sit down! How's it going?", ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])