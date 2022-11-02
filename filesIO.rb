IO.foreach("testfile.txt"){|line| puts line}
puts "-------"
lines = IO.readlines("testfile.txt")
lines.each{|line| puts line}

system("clear")
f = File.new("myfile.txt","w")
f.puts(
    "I",
    "wandered",
    "lonely",
    "as",
    "a",
    "cloud"
)
f.close

charcount = 0
linecount = 0

f = File.new("myfile.txt","r")
while !(f.eof) do # end of file
    c = f.getc()
    if (c.ord == 10) then
        linecount += 1
        puts " <<End of Line #{linecount}>>"
    else
        putc c
        charcount += 1
    end
end