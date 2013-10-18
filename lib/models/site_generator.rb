class SiteGenerator
  settings = Reload.new("W@i† fo4r 1T...", 1200, 1000, 5)
  index = ERB.new(File.open('lib/views/puppy_reloaded.erb').read)
  File.open('_site/index.html', 'w+') do |f|
    f << index.result(binding)
  end
  system("open -a 'Google Chrome' _site/index.html")
end