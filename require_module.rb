require("./modulesmixins.rb")

puts "MyModule::GOODMOOD #{MyModule::GOODMOOD}"
puts "MyModule.greet #{greet}"

puts "MyModule::BADMOOD #{MyModule::BADMOOD}"
puts "MyModule.greet #{MyModule.greet}"
puts greet
puts sayHi
puts sayHiAgain
sing