class Reload
  attr_reader :duration, :title, :width, :height

  def initialize(title, width=500, height=500, duration=8)
    @title = title
    @height = height
    @width = width
    @duration = duration
  end
  
end