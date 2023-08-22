Given("I am on the order search page") do
  $driver.navigate.to CONFIG['url']
end

When("I select the option {string} in the Find Order By field") do |option|
  @order.selectFindBy(option)
end

When("I fill in all the required fields with valid values") do
  @order.fillInRequiredValid
end

And("I click the continue button") do
  @order.clickContinue
end

Then("as I do not have any order registered the system shows me an error message") do
  expect(@order.validateErrorMensage).to eq("Invalid Form Key. Please refresh the page.").or eq("You entered incorrect data. Please try again.")
end