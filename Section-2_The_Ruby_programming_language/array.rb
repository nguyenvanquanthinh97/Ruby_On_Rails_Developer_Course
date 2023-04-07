arr = [1,2,3,4,5,6,7,8,9]
print arr
puts

puts arr.last
puts arr.first

range_10 = 0..10
puts range_10.class
print range_10.to_a
puts
print range_10.to_a.shuffle
puts
puts range_10

new_arr_10 = range_10.to_a
new_arr_10.shuffle!
print new_arr_10
puts

range_a_to_z = "a".."z"
print range_a_to_z.to_a
puts

puts range_a_to_z.to_a.length

25.times {print '-'}
puts
arr = [1,2,3,4,5,6,7,8,9]
puts arr.length


# push
print arr << 10
puts
p arr.push(11)
p arr.append(12)
puts

# pop
popped_item = arr.pop
puts popped_item
p arr

# shift
shifted_item = arr.shift
puts shifted_item
p arr

# unshift 
arr.unshift(0)
print arr
puts

# uniq
arr = ["Hello", 1,2,3,4,5,6,7,8,9, "Hello"]
new_arr = arr
new_arr.uniq!
p new_arr
p arr

# empty?
p arr.empty?
b = []
p b.empty?

# include?
p arr.include?("Hello")
p arr.include?("Item")

# join
p arr.join
p arr.join("-")
p arr.join(",")

# split
b = arr.join("-")
p b
p b.split
p b.split('-')
p %w(my name is thinh and this is great Ruby is amazing)

# index
p arr[3]

# for...in
for i in arr
  print i.to_s + ' '
end

puts
25.times {print '-'}
puts

for i in 10..20
  print i.to_s + ' '
end

puts
25.times {print '-'}
puts

[1,2,3,4,5,6,7,8,9,10].each do |item|
  print item.to_s + ' '
end

puts
25.times {print '-'}
puts

(1..10).each do |item|
  print item.to_s + ' '
end

puts
25.times {print '-'}
puts

(11..20).each {|item| print item.to_s + ' '}


puts
25.times {print '-'}
puts
# Select
p (1..10).select {|item| item.even?}
p (1..10).select {|item| item.odd?}

puts
25.times {print '-'}
puts
# map
p (1..10).map {|item| item * 2}




