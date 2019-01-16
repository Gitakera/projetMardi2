require_relative '../lib/compteur_mots.rb'


describe "Compter le nombre d occurence" do
  it "doit retourner un hash contenant le nombre d occurence" do
    dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
    expect(word_counter("below",dictionary)).to eq({"below"=>1, "low"=>1})
    expect(word_counter("Howdy partner, sit down! How's it going?",dictionary)).to eq({"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1})
    
  end
end
