Before do
  page.current_window.resize_to(1440, 900)
end

After do |scenario|
  if scenario.failed?
    img = page.save_screenshot("screenshots/#{scenario.name}_#{Time.now.strftime("%Y-%m-%d@%H-%M-%S")}.png")
    attach(File.open(img), "image/png")
  end
end
