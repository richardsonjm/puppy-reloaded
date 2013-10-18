class SiteGenerator
  attr_reader :title, :height, :width, :duration

  def initialize(title, height, width, duration)
    @title = title
    @height = height
    @width = width
    @duration = duration
    run
  end

  def run
    settings = Reload.new(title, height, width, duration)
    index = ERB.new(File.open('lib/views/puppy_reloaded.erb').read)
    File.open('_site/index.html', 'w+') do |f|
      f << index.result(binding)
    end
    system("open -a 'Google Chrome' _site/index.html")
  end

end