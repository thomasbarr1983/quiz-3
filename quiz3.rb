class Dog
  attr_accessor :breed , :gender , :name , :size , :color
  
  def initialize(breed , gender , name , size , color)
    @name = name
    @breed = breed
    @gender = gender
    @size = size
    @color = color
  end  

  def bark
    puts 'Ruff! Ruff!'
  end
  
  def display
    puts "I am #{@name} a #{@gender} #{@breed} who is #{@size} and #{@color}"
  end  
end

d = Dog.new('Louie', 'male', 'Pit Bull', 'medium', 'tan')

=begin  
  Every object is "born" with certain innate abilities.  
  To see a list of innate methods, you can call the methods  
  method (and throw in a sort operation, to make it  
  easier to browse visually). Remove the comment and execute.  
=end
#create instance of method with all attributes along with disply of output
puts "The id of d is #{d.object_id}."

if d.respond_to?("talk")  
  d.talk  
else  
  puts "Sorry, d doesn't understand the 'talk' message."  
end

d.bark  
d.display

d1 = d  
d1.display

d = nil
d.display

d1 = nil