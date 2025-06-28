RSpec.describe "not_to_method" do
  it "not to method" do
     expect(7).not_to eq(6)
     expect("helo").not_to eq("Hello")
  end
end