require 'module.rb'

class Person
    include Trig
    attr_reader :name, :age
    def initialize(name, age)
        @name, @age = name, age
    end
    def <=>(person) # Comparison operator for sorting
        @age <=> person.age
    end
    def to_s
        "#@name (#@age)"
    end
end

group = [
    Person.new("Bob", 33),
    Person.new("Chris", 16),
    Person.new("Ash", 23)
]

puts group.sort.reverse

# => Bob(33)
# => Ash(23)
# => Chris(16)

# invoke sin method mixed from Module Trig
person = Person.new("a", 10)
person.sin(10)



# overload
class Student < Person
    def to_s
        "student name:#@name, age:#@age"
    end
end