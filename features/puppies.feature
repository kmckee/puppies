Feature: Puppies

  @wip
  Scenario: Name is required
    Given I am completing an adoption
    When I attempt to checkout with no name
    Then I should see the error message "Name can't be blank"

  Scenario: Address is required
    Given I am completing an adoption
    When I attempt to checkout with no address
    Then I should see the error message "Address can't be blank"

  Scenario: Thanks for adopting message the right way(tm)
    When I adopt a puppy
    Then I should see "Thank you for adopting a puppy!" 

  Scenario: Valid payment options
    When I am completing an adoption
    Then I should see the following payment options
      |option         |
      |Check          |
      |Credit card    |
      |Purchase order |

