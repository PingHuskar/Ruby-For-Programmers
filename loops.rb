# for i in [1,2,3]
#     puts i
# end
for i in {1=>'one',2=>'two',3=>'three'}
    p i
    p i.class
    puts i
    puts i.class
    puts '-----'
end

[1,2,3].each do |i|
    p i
end

{1=>'one',2=>'two',3=>'three'}.each do |i|
    p i
end

for s in 1..5
    p s
end

(1..5).each do |s|
    p s
end

system("clear")
0.upto(10) do |i|
    puts i
end

system("clear")
10.downto(0) do |i|
    puts i
end

system("clear")
multiarr = [
    ['one','two','three','four'],
    [1,2,3,4]
]
for i in multiarr
    puts i
end
for (a,b,c,d) in multiarr
    puts "#{a} #{b} #{c} #{d}"
end

multiarr.each do |a,b,c,d|
    puts "#{a} #{b} #{c} #{d}"
end

multiarr.each { |a,b,c,d|
    puts "#{a} #{b} #{c} #{d}"
}