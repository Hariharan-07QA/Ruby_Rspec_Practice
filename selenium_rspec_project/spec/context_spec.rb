RSpec.describe "#even method?" do 
context "with even number" do
  it "should return true" do
  expect(2.even?).to eq(true)
end
end
context "with odd number" do
  it "should return false" do
  expect(3.even?).to eq(false)
end
end
end 