Then(/^I should see "(.*?)"$/) do |expected|
  @current_page.text.should include expected
end

When(/^I adopt a puppy$/) do
  visit(HomePage).view_details_for
  on(AdoptionPage).adopt
  on(CartPage).complete_adoption
  on(CheckoutPage).check_out
end

Given(/^I am completing an adoption$/) do
  visit(HomePage).view_details_for
  on(AdoptionPage).adopt
  on(CartPage).complete_adoption
end

When(/^I attempt to checkout with no (.*)$/) do |missing_field_name|
  on(CheckoutPage).check_out(missing_field_name => '')
end
