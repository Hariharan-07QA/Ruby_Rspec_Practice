RSpec.describe "all matcher" do
it "with using Rubyv each do method" do 
[5,7,9].each do |val|
  expect(val).to be_odd
end
end
it "can run with all matchers " do
expect([5,7,11]).to all(be_odd)
expect([2,4,6]).to all(be_even)
expect([[],[],[]]).to all(be_empty)
expect([0,0]).to all(be_zero)
expect([5,6,7]).to all(be<10)
end
describe [5,7,9] do
  it{is_expected.to all(be_odd)}
end
end