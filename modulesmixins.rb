module MyModule
    GOODMOOD = "happy"
    BADMOOD = "grumpy"
    def greet
        return "I'm #{GOODMOOD}. How are you?"
    end
    def MyModule.greet
        return "I'm #{BADMOOD}. How are you?"
    end
    def sayHi
        puts greet
    end
    def sayHiAgain
        return MyModule.greet
    end
end

def sing
    puts "kor way la eek mai nan"
end

include MyModule
puts "MyModule::GOODMOOD #{MyModule::GOODMOOD}"
puts "MyModule.greet #{greet}"

puts "MyModule::BADMOOD #{MyModule::BADMOOD}"
puts "MyModule.greet #{MyModule.greet}"

class MyClass
    include MyModule
    def sayHi
        puts greet
    end
end

ob = MyClass.new
ob.sayHi
puts ob.greet