class Card
  attr_accessor :rank,:suite
  
  def initialize(rank,suite)
    @rank=rank
    @suite=suite
  end
end

RSpec.describe 'Card' do 

#Method 1
# before do
# @card = Card.new("Ace","spades")
# end

#Method 2 - When using this helper method we have some drawbacks which is every time when calling card 
# method inside a example it will create one new instance
# def card
#   Card.new("Ace","spades")
# end  

#Method 3(In this mwthod how many times you call the card it will create instance for first time in example
#next time it will bring the value from Cache)
let (:card){card=Card.new("Ace","spades")}

it 'has a rank' do
  expect(card.rank).to eq("Ace")
  card.rank ="Queen"
  expect(card.rank).to eq("Queen")  
end

  it 'has a suite' do
  expect(card.suite).to eq("spades")
  end

  it "has a custom error message" do
  comparison ='spades'
  expect(card.suite).to(eq(comparison),"Hey , I expected #{comparison} but i got #{card.suite}")
  end
end