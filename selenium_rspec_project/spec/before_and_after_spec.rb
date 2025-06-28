RSpec.describe "before and after hooks" do
  before(:context) do
    puts "before context"
  end
  after(:context) do
    puts "after context"
  end
  before(:example) do
    puts "before example"
  end
  after(:example) do 
    puts "after example"
  end

  it "this is the first example" do
    expect(3*4).to eq(12)
  end

  it "this is the second example" do
    expect(5*4).to eq(20)
  end
end
