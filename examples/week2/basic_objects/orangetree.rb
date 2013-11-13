class OrangeTree

  def initialize
    @age = 0
    @oranges = 0
    @height = 0

    puts "an orange tree has been planted!"
  end

  def height
    @height
  end

  def one_year_passes
    if @age < 15
      if @oranges > 0
        puts "All the oranges from last year fell off and rotted."
        @oranges = 0
      end
      @age = @age + 1

      if @height <= 10
          @height = @height + 2
      else
        @height = @height + 0
      end

      if @age > 10
        @oranges = @oranges + 3
      elsif @age < 10 && @age > 5
        @oranges = @oranges + 1 
      end

      puts "the tree is #{@age} years old and #{@height} feet tall."
    else
      puts "You tree got infected and died"
      exit
    end
  end

  def count_the_oranges
    puts "the orange tree has #{@oranges} oranges"

    if @age <=5
        puts "The tree is too young to produce fruit."
    elsif @age >= 6 && @oranges > 0
        @oranges
    else
      puts "There are no oranges. Did you pick them all?"
    end
  end

  def pick_an_orange
    if @oranges <= 0
      puts "There are no oranges on the tree!"
      if @age <=5
        puts "The tree is too young to produce fruit."
      else @age >= 6
        puts "You picked all the fruit"
      end
    else
      puts "You picked an orange"
      @oranges = @oranges - 1
      count_the_oranges
    end
  end
  
end