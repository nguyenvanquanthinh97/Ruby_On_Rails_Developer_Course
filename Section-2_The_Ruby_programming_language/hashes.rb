sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}

p sample_hash
p sample_hash['b']
25.times {print('-')}
puts
########
my_details = {'name' => 'mashrur', 'favcolor' => 'red'}
p my_details['favcolor']
my_details['favorite']="games"
p my_details
25.times {print('-')}
puts
########
another_hash = {a: 1, b: 2, c:3}
p another_hash
p another_hash[:b]
25.times {print('-')}
puts
#########
p another_hash.keys
p sample_hash.keys
25.times {print('-')}
puts
#########
sample_hash.each do |k, v|
  puts "The class for key is #{k.class} and the value is #{v.class}"
end

25.times {print('-')}
puts

another_hash.each {|k, v| puts "The class for key is #{k.class} and the value is #{v.class}"}

25.times {print('-')}
puts
#########
my_hash = {a: 1, b: 2, c: "Ruby", d: 4, e: "Mashrur"}
p my_hash.select {|k, v| v.is_a?(String)}

25.times {print('-')}
puts
p my_hash
my_hash.each {|k, v| my_hash.delete(k) if v.is_a?(String)}
p my_hash
