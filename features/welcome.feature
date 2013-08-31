Feature: Welcome Page
  As a visitor
  I want to see the welcome page

  Scenario: Visiting the Home Page
    Given I'm a guest
    When I visit the home page
    Then I should see "The home of homegrown crafts"
