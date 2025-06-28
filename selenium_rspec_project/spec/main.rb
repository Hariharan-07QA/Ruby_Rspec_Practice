
# Conditional Statements

age = gets.chomp.to_i
if age >=18
  puts "you eligible to vote"
elsif age <18
  puts "you are not eligible to vote"
end

3.times do |counter|
  puts "the counter is #{counter}"
end

(2..10).each do |count|
  puts "the count is #{count}"
end

arr =[10,23,23,45,556,23]
arr.each do |value|
  puts value
end