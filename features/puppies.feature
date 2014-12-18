Feature: Puppies

  Background:
    Given I am shopping for puppies 

  Scenario: Name is required
    When I click the view details button for Hanna
    And I click the adopt me button
    And I click the complete the adoption button
    And I leave the name field blank
    And I enter "123 Main Street" in the address field
    And I enter "cheezy@example.com" in the email field
    And I select "Credit card" in the pay type field
    And I click the place order button
    Then I should see "Name can't be blank"

  Scenario: Address is required
    When I click the view details button for Hanna
    And I click the adopt me button
    And I click the complete the adoption button
    And I enter "Cheezy" in the name field
    And I leave the address field blank
    And I enter "cheezy@example.com" in the email field
    And I select "Credit card" in the pay type field
    And I click the place order button
    Then I should see "Address can't be blank"

  Scenario: Thanks for adopting message 
    When I click the view details button for Hanna
    And I click the adopt me button
    And I click the complete the adoption button
    And I enter "Cheezy" in the name field
    And I enter "123 Main Street" in the address field
    And I enter "cheezy@example.com" in the email field
    And I select "Credit card" in the pay type field
    And I click the place order button
    Then I should see "Thank you for adopting a puppy!"

    @wip
  Scenario: Thanks for adopting message with a table
    When I click the view details button for Hanna
    And I click the adopt me button
    And I click the complete the adoption button
    And I checkout with:
      |name  |address     |email             |pay_type   |
      |Cheezy|123 Main St.|cheezy@example.com|Credit card|
    Then I should see "Thank you for adopting a puppy!"

  Scenario: Thanks for adopting message with no data
    When I click the view details button for Hanna
    And I click the adopt me button
    And I click the complete the adoption button
    And I checkout 
    Then I should see "Thank you for adopting a puppy!"

  Scenario: Thanks for adopting message with partial data
    When I click the view details button for Hanna
    And I click the adopt me button
    And I click the complete the adoption button
    And I checkout with a Purchase order 
    Then I should see "Thank you for adopting a puppy!"

