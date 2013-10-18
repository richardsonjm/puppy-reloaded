class CLIPuppies
  attr_reader :prompt

  def initialize
    @prompt = "☺"
    dog_welcome
    get_command
    Runner.new
  end

  def get_command
    gets.chomp.strip
  end

if gets.chomp.strip.to_i > 0

  def 

  end

end


#first welcome user
#ask to input 
#want to be able to open up page using the CLI 

  def dog_welcome
    system("say -v 'Bad News' 'woof woof... wooooof'")
    "\n\n

          __    __
          \\/----\\/
           \\0  0/    Puppies...Reloaded.
           _\\  /_
         _|  \\/  |_
        | | |  | | |
       _| | |  | | |_
      \"---|_|--|_|---\"

    \n\n
    "
  end


# def input
#   puts 
#   gets.strip.downcase!
# end
