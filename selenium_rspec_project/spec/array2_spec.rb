RSpec.describe Array do
subject(:sally) do
[1,2]
end

it "to check array length" do
expect(subject.length).to eq(2)
subject.pop()
expect(subject.length).to eq(1)
end
it "sally equal to original array" do
  expect(sally.length).to eq(2)
end
end