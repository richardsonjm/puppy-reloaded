class CLIPuppies
  attr_reader :prompt

  def initialize
    @prompt = "☺"
  end

  def input_pixels(dimension)
    prompt_pixel_count(dimension)
    print @prompt
    user_input = gets.strip
    while not_valid_pixel(user_input)
      invalid_input
      prompt_pixel_count(dimension)
      user_input = gets.strip
    end
  end

  def input_duration
    prompt_duration
    print @prompt
    user_input = gets.strip
    while not_valid_duration(user_input)
      invalid_input
      prompt_duration
      user_input = gets.strip
    end
  end

# if gets.chomp.strip.to_i > 0
  def dog_welcome
    system("say -v 'Bad News' 'Welcome to puppies.'")
    system("say -v 'Trinoids' 'Reloaded.'")
    system("say -v 'Zarvox' 'Reloaded.'")
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

  def call
    puts dog_welcome
    puts "Input a page title."
    title = input_title
    height = input_pixels("height")
    width = input_pixels("width")
    duration = input_duration
  end

  def help

  end

  def not_valid_pixel(user_input)
    !(user_input > 2 && user_input <= 100)
  end

  def not_valid_duration(user_input)
    !(user_input > 99 && user_input <= 2000)
  end

  def prompt_pixel_count(dimension)
    puts "Please input a pixel (#{dimension}) between 100 and 2000. Woof!"
  end

  def prompt_duration
    puts "Please input how often you'd like to refresh, in seconds. Something between 3 and 100 please. Yip! :D"
  end

  def invalid_input
    puts "The puppies are sad. Yip :("
  end

end


#first welcome user
#ask to input 
#want to be able to open up page using the CLI 