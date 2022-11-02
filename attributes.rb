class Thing
    attr_reader :name, :description
    attr_writer(:name, :description) # allow overwrite
    attr_accessor(:value, :id, :owner)
    # def initialize(aName, aDescription)
    #     @name = aName
    #     @description = aDescription
    # end
end

class Treasure < Thing
    attr_accessor(:name,:description,:value, :id, :owner) # shorthand for read and write
    # def initialize(aName, aDescription)
    #     super(aName, aDescription)
    # end
end

t = Thing.new#("The Thing", "a lovely, glittery wotsit")
t.description = "269"
t.name = "Shabu"
puts t.name
puts t.description
t.value = 100
t.id = "THING_NUNBER1"
t.owner = "Me"
puts "#{t.name} #{t.description} #{t.id} #{t.value} #{t.owner}"

t1 = Treasure.new#("sword", "an Elvish weapon forged of gold")
t1.name = "sword"
t1.description = "an Elvish weapon forged of gold"
t1.value = 800
puts "#{t1.name} #{t1.description} #{t1.value}"
t1.value = 100
t1.description << " (now somewhat tarnished)"
puts "#{t1.name} #{t1.description} #{t1.value}"
