require 'erb'

class Reload
  attr_accessor :seconds, :title, :width, :height

  def initialize(title, width=500, height=500, seconds=8)
    @title = title
    @seconds = seconds
    @width = width
    @height = height
  end
end


def input
  puts 
  gets.strip.downcase!
end


#class Runner
  settings = Reload.new("W@i† fo4r 1T...", 500, 500, 8)
  index = ERB.new(File.open('puppy_reloaded.erb').read)
  File.open('index.html', 'w+') do |f|
    f << index.result(binding)
  end
  system("open -a 'Google Chrome' ./index.html")

# end
