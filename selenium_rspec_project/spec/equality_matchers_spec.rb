RSpec.describe "equality matchers" do
let(:a){3}
let(:b){3.0}

it "eq checks only the value not type" do
expect(a).to eq(b)
end
it "eql checks bot the value and type" do
expect(a).to eql(3)
expect(a).not_to eql(b)
end
describe "equal and Be matcher" do
  let (:c){[1,2,3]}
  let (:d){[1,2,3]}
  let(:e){c}
  it "cares about object identity" do
    expect(c).to eq(d)
    expect(c).to eql(d)
    expect(c).to equal(e)
    expect(c).to be(e)
    expect(c).not_to equal(d)
    end
end
end