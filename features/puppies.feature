Feature: Puppies

  Scenario: Name is required
    Given I am completing an adoption
    When I attempt to checkout with no name
    Then I should see "Name can't be blank"
  
  Scenario: Address is required
    Given I am completing an adoption
    When I attempt to checkout with no address
    Then I should see "Address can't be blank"

  Scenario: Thanks for adopting message the right way(tm)
    When I adopt a puppy
    Then I should see "Thank you for adopting a puppy!" 
