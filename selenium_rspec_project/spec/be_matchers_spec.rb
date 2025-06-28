RSpec.describe "be matchers" do
it "can test for truthiness" do
expect('helo').to be_truthy
expect(2).to be_truthy
expect(true).to be_truthy
expect(3.22).to be_truthy
expect(-1).to be_truthy
expect([]).to be_truthy
expect([1,2]).to be_truthy
expect({}).to be_truthy
end
it "can test for falsiness" do
expect(false).to be_falsy
expect(nil).to be_falsy
end

it "can test for nil" do
  expect(nil).to be_nil
  my_hash ={a:1}
  expect(my_hash[:b]).to be_nil
end

end