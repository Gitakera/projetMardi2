require_relative '../lib/trader.rb'


describe "Doit renvoyer le meilleur jour d'achat et le meilleur jour de revente pour faire le maximum de bénéfices." do
  it "doit retourner 1 et 4 en tab" do
    expect(trader_du_dimanche([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
   
  end
end