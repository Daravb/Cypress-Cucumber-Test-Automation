Feature: WebdriverUniversity - Contact Us

    Scenario: Valid Contact Us Form Submission

        Given I navigate to webdriveruniversity homepage
        When I click on the Contact Us button
        And I enter valid firstname
        And I enter valid lastname
        And I enter valid email address
        And I enter valid comment
        And I click Submit button
        Then I am navigated to Success Contact Us submission page

    Scenario: Invalid Contact Us Form Submission

        Given I navigate to webdriveruniversity homepage
        When I click on the Contact Us button
        And I enter valid firstname
        And I enter valid lastname
        And I enter valid comment
        And I click Submit button
        Then I am navigated to Unsuccess Contact Us submission page

    Scenario: Valid Contact Us Form Submission - With Specific Values

        Given I navigate to webdriveruniversity homepage
        When I click on the Contact Us button
        And I enter valid firstname "Earl"
        And I enter valid lastname "Joseph"
        And I enter valid email address "joseph123@yahoo.com"
        And I enter valid comment "I love you" and 143 in the comment box
        And I click Submit button
        Then I am navigated to Success Contact Us submission page

    Background: Navigation to Home Page

        Given I navigate to webdriveruniversity homepage
        When I click on the Contact Us button

    Scenario Outline: Contact Us page

        And I enter first name '<firstName>' and last name <lastName>
        And I enter email address '<email>' and comment '<comment>'
        And I click Submit button
        Then I am navigated to Contact Us Submission page '<message>'

        Examples:
            | firstName | lastName | email                    | comment           | message                      |
            | Dara      | Vivi     | daravivi12@yahoo.com     | Hello pangit      | Thank You for your Message!  |
            | Earl      | Sandwich | earlsandwich45@yahoo.com | Awit sayo talaga! | Thank You for your Message!  |
            | Bogart    | Away     | bogart.away              | Hello pangit      | Error: Invalid email address |
