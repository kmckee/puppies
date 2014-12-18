Given(/^I am shopping for puppies$/) do
  visit(HomePage)
end

When(/^I click the view details button for (.*)$/) do |name|
  on(HomePage).view_details_for(name)
end

When(/^I click the adopt me button$/) do
  on(AdoptionPage).adopt
end

When(/^I click the complete the adoption button$/) do
  on(CartPage).complete_adoption
end

When(/^I enter "(.*?)" in the address field$/) do |address|
  on(CheckoutPage).address= address
end

When(/^I enter "(.*?)" in the email field$/) do |email|
  on(CheckoutPage).email= email
end

When(/^I select "(.*?)" in the pay type field$/) do |pay_type|
  on(CheckoutPage).pay_type= pay_type
end

When(/^I click the place order button$/) do
  on(CheckoutPage).place_order
end

Then(/^I should see "(.*?)"$/) do |expected|
  @current_page.text.should include expected
end

When(/^I enter "(.*?)" in the name field$/) do |name|
  on(CheckoutPage).name= name
end

When(/^I leave the (.*) field blank$/) do |field|
  on(CheckoutPage).send("#{field}=", '')
end


