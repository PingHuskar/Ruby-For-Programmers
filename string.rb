# print "What's your name?\n"
# name = gets
# puts "Hello, #{name.inspect}"
# puts "Hello, #{name.chomp}"
num1 = 10.12945
num2 = 10
printf "%f\n", num1
printf "%0.02f\n", num1
printf "d=%d f=%f o=%o x=%x s=%s\n", num2, num2, num2, num2, num2
printf "\t0.04f=%0.04f : 0.02f=%0.02f\n", num1, num1

s1 = "chadin ".capitalize
s2 = "chaipornpisuth".capitalize
s3 = s1 << s2 # concatenate string
puts s3
puts s3[0..6]

p s1.chop
p s1.chomp
p s2.chop
p s2.chomp
p s3.swapcase