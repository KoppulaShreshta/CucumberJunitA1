Feature: Skillrary demo app login

  Background: 
    Given Enter to login page

  Scenario: Login to skillrary demo app with valid credentials
    When when i provide valid credentials
    And hit on login
    Then I should navigate to Homepage

  Scenario Outline: Login to Skillrary with multiple credentials
    When when i provide <username> and <password>
    And hit on login
    Then I should navigate to Homepage

    Examples: 
      | username | password |
      | admin    | admin    |
      | user     | user     |
      | abcdefg  |   123456 |