class Reload
  attr_accessor :seconds, :title, :width, :height

  def initialize(title, width=500, height=500, seconds=8)
    @title = title
    @seconds = seconds
    @width = width
    @height = height
  end
  
end