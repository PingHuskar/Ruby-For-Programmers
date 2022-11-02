system "clear"
class Dog
    @@num_dogs = 0 # class variable

    
    def initialize(aName)
        @name = aName
        @@num_dogs += 1
    end
    def talk
        puts "Woof! My name is #{@name} and I'm 1 of #{@@num_dogs}"
    end
    # class method
    def Dog.showInfo
        puts "this is a class method. Number of dogs = #{@@num_dogs.to_s}"
    end
end

class GreatPyrenees < Dog
    def howl
        puts @howl
    end
    def initialize(aName, aHowl)
        super(aName)
        @howl = aHowl
    end
    
end

Dog.showInfo

dog1 = Dog.new("Prayut")
dog2 = Dog.new("Prawit")

dog1.talk
dog2.talk

Dog.showInfo

dogrun = GreatPyrenees.new('Toon', 'Chivit yang mee prungnee samer')
dogswim = GreatPyrenees.new("Tono", "Mun took gum nod wai laew")

dogrun.talk
dogrun.howl
dogswim.talk
dogswim.howl

Dog.showInfo