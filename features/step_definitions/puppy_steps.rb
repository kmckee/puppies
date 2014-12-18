Given(/^I am shopping for puppies$/) do
  visit(HomePage)
end

When(/^I click the first view details button$/) do
  on(HomePage).view_details
end

When(/^I click the adopt me button$/) do
  on(AdoptionPage).adopt
end

When(/^I click the complete the adoption button$/) do
  on(CartPage).complete_adoption
end

When(/^I leave the name field blank$/) do
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
  on(CheckoutPage).text.should include expected
end
