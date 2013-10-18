class CLIPuppies
  attr_reader :prompt

  def initialize
    @prompt = "ˁ˚ᴥ˚ˀ *Woof!* =>>  "
  end

  def input_title
    puts "Input a page title."
    print @prompt
    gets.strip
  end

  def input_pixels(dimension)
    prompt_pixel_count(dimension)
    print @prompt
    user_input = gets.strip.to_i
    while not_valid_pixel(user_input)
      invalid_input
      prompt_pixel_count(dimension)
      user_input = gets.strip.to_i
    end
    user_input
  end

  def input_duration
    prompt_duration
    print @prompt
    user_input = gets.strip.to_i
    while not_valid_duration(user_input)
      invalid_input
      prompt_duration
      user_input = gets.strip.to_i
    end
    user_input
  end

  def dog_welcome
    system("say -v 'Bad News' 'Welcome to puppies.'")
    system("say -v 'Trinoids' 'Reloaded.'")
    system("say -v 'Whisper' 'Reloaded.'")
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
    title = input_title
    height = input_pixels("height")
    width = input_pixels("width")
    duration = input_duration
    SiteGenerator.new(title, height, width, duration)
  end

  def not_valid_pixel(user_input)
    !(user_input > 199 && user_input <= 2000)
  end

  def not_valid_duration(user_input)
    !(user_input > 2 && user_input <= 120)
  end

  def prompt_pixel_count(dimension)
    puts "Please input a pixel (#{dimension}) between 200 and 2000. Woof!"
  end

  def prompt_duration
    puts "Please input how often you'd like to refresh, in seconds. Something between 3 and 120 please. Yip! :D"
  end

  def invalid_input
    puts "The puppies are sad. Yip :("
  end

end