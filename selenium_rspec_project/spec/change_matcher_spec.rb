RSpec.describe "change matcher" do
  subject{[1,2,3]}
it "Checks that method changes the object state" do
 expect{subject.push(4)}.to change{subject.length}.from(3).to(4)
 expect{subject.push(4)}.to change{subject.length}.by(1)
end
it "Checks negative arguments" do
 expect{subject.pop}.to change{subject.length}.by(-1)
end 
end