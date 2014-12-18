Given(/^I am completing an adoption$/) do
  visit(HomePage).view_details_for
  on(AdoptionPage).adopt
  on(CartPage).complete_adoption
end

When(/^I adopt a puppy$/) do
  visit(HomePage).view_details_for
  on(AdoptionPage).adopt
  on(CartPage).complete_adoption
  on(CheckoutPage).check_out
end

When(/^I attempt to checkout with no (.*)$/) do |missing_field_name|
  on(CheckoutPage).check_out(missing_field_name => '')
end

Then(/^I should see "(.*?)"$/) do |expected|
  @current_page.text.should include expected
end

Then(/^I should see the following payment options$/) do |expected_payments|
  on(CheckoutPage).payment_types.should =~ expected_payments.rows.collect {|row| row[0] }
end

Then(/^I should see the error message "(.*?)"$/) do |expected_error|
  on(CheckoutPage).errors.should include expected_error
end
