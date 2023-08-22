class OrdersAndReturnsPage
  # ---------------------- screen elements ----------------------
  def initialize
    type = ''
    @search = ("quick-search-type-id")
    @find = (".//*[contains(., '#{type}')]")
    @order = ("oar-order-id")
    @lastname = ("oar-billing-lastname")
    @email = ("oar_email")
    @continue = ('.//*[contains(@title, "Continue")]')
    @message = ('.//*[contains(@class, "page messages")]')
  end

  attr_accessor :search, :order, :lastname, :email, :continue, :message, :find

  def selectFindBy(type)
    $driver.find_element(:id, search).click
    $driver.find_element(:xpath, find).click  
  end

  def fillInRequiredValid
    $driver.find_element(:id, order).send_keys(DATA['DATA']['order1']['orderID'])
    $driver.find_element(:id, lastname).send_keys(DATA['DATA']['order1']['billingLastName'])
    $driver.find_element(:id, email).send_keys(DATA['DATA']['order1']['email'])  
  end

  def clickContinue
    $driver.find_element(:xpath, continue).click
    sleep(1)
  end

  def validateErrorMensage
    $driver.find_element(:xpath, message).text 
  end

end