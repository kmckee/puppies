Feature: Puppies

Scenario: Name is required
  Given I am shopping for puppies 
  When I click the first view details button
  And I click the adopt me button
  And I click the complete the adoption button
  And I leave the name field blank
  And I enter "123 Main Street" in the address field
  And I enter "cheezy@example.com" in the email field
  And I select "Credit card" in the pay type field
  And I click the place order button
  Then I should see "Name can't be blank"
  
