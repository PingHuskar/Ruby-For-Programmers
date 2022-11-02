x = 0
begin
    puts x
    x += 1
end while x < 10

system("clear")
i = 10
puts "start 1st while loop"
while i < 10 do
    puts i
    i += 1
end
puts "end 1st while loop"
i = 10
puts "start 2nd while loop"
begin
    puts i
    i += 1
end while i < 10
puts "end 2nd while loop"

# until

# runs 0 or more times

system("clear")
initial_num = 5
i = initial_num
puts "until 1"
until i == initial_num do puts(i) end # never executes

puts "until 2"
until i == initial_num # never executes
    puts i
    i += 1
end

puts "until 3"
puts(i) until i == initial_num # never executes

# runs 1 or more times

puts "until 4" 
begin # executes once
    puts(i)
end until i == initial_num

# loop
system("clear")
arr = ['one','two','three','four']

## loop (do..end)
i = 0
loop do
    puts arr[i]
    i += 1
    if (i == arr.length) then
        break
    end
end

## loop (curly braces)
i = 0
loop {
    puts arr[i]
    i += 1
    if (i == arr.length) then
        break
    end
}