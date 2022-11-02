system("clear")
3.times do |i|
    puts i
end
3.times { |i|
    puts i
}

system("clear")
p [1,2,3].collect{|x| x*2}
p ["hello", "good day", "how do you do"].collect{|x| x.capitalize}
newstr = ""
a = "hello wolrd".split('').each{|x| newstr << x.capitalize
puts newstr
}
p a
puts newstr

system("clear")
a = Proc.new{|x| x*=10; puts x}
b = lambda{|x| x*=10; puts x}
c = proc{|x| x.capitalize}
p a.class
p b.class
p c.class
p a
p b
p c

a.call(100)
b.call(60)
p c.call("hello world")

def aMethod
    puts "aMethod"
    yield
end

aMethod{ puts "Good Morning" }

def caps(anarg)
    puts "caps method"
    yield(anarg)
end

caps("a lowercase string"){|x| x.upcase!; puts x}

system("clear")
def abc(a,b,c)
    puts "---abc---"
    a.call
    b.call
    c.call
    yield
end

def abc2(&d)
    puts "---abc2---"
    d.call
    yield
end

a = lambda{puts "one"}
b = lambda{puts "two"}
c = proc{puts "three"}
myproc = proc{puts("my proc")}

abc(a,b,c) {puts "four"}
abc2{ puts "four"}

system("clear")
def foo(s)
    puts "in foo"
    if block_given?
        puts "Block passed to foo"
        yield(s)
    else
        puts "no block pass to foo"
    end
end

foo("hello"){ |s| s.upcase!
    puts s
}

foo("goodbye")