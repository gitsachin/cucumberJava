Feature: Security Testing

@SecurityTesting_001
Scenario Outline: Accessing other account by Direct URL 
	Given URL in the browser
	Then Login page should displayed
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I enter url as "<url>"
	When I wait for 10 seconds 
	Then Account page should not displayed
	Then I close the browser

Examples:
| url |
|https://test.findd.io/account/9712e8e1-cf32-8047-c925-516089d7b59d|

@SecurityTesting_002
Scenario Outline: Accessing other Hierarchy Employee by Direct URL(Bug ID:149657923)
	Given URL in the browser
	Then Login page should displayed
	When I Enter "leveltesting@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I enter url as "<url>" 
	When I wait for 10 seconds
	Then Employee Details page should not displayed
	Then I close the browser
	
Examples:
| url |
|https://test.findd.io/user-details/c61cc112-b451-124a-e8cb-dff4378c509a|


@SecurityTesting_003
Scenario Outline: Accessing other Account Employee by Direct URL
	Given URL in the browser
	Then Login page should displayed
	When I Enter "leveltesting@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I enter url as "<url>" 
	When I wait for 10 seconds
	Then Employee Details page should not displayed
	Then I close the browser
	
Examples:
| url |
|https://test.findd.io/user-details/f3ce072a-43d0-a281-5749-435586acf1a1|