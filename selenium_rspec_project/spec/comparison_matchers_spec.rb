RSpec.describe "Comparison Matchers" do
it "comparison matchers with built in operators in ruby" do
expect(10).to be >5
expect(8).to be <10
expect(1).to be >=1
end
describe 100 do
  it{is_expected.to be >90}
  it{is_expected.to be >=100}
  it{is_expected.to be <110}
end
end