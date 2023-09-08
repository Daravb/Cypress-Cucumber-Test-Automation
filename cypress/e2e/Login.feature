Feature: Webdriveruniversity - Login Functionality

    Background: Navigation to Login Page

        Given I navigate to Webdriveruniversity Login page

    Scenario: Webpage Login

        When I enter the username <username>
        And I enter the password <password>
        Then the message alert will prompt '<alert>'

        Examples:
            | username     | password     | alert                |
            | webdriver    | webdriver123 | validation succeeded |
            | webdriver    | webdriver    | validation failed    |
            | webdriver123 | webdriver    | validation failed    |


