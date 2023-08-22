Before do
  $driver = Selenium::WebDriver.for :chrome
  @order ||= OrdersAndReturnsPage.new
end

After do
  $driver.quit
end