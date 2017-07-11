Feature: Login

@Login_001
Scenario: Login with valid credential 
	Given URL in the browser
	Then Login page should displayed
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
	And I click on Login Button
	Then Home page should displayed	
	When I click on setting option
	And I click on Logout
	Then Login page should displayed
	Then I close the browser 
		
@Login_002
Scenario: Login with Invalid credential
	Given URL in the browser
	Then Login page should displayed
	When I Enter "test@test.com" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then "Oops! that email / password combination is not valid." error should thrown in Login Page
	Then I close the browser 
	
@Login_003
Scenario: Login with missing mandatory fields
	Given URL in the browser
	Then Login page should displayed
	When I click on Login Button
	Then "Valid email address required" error should thrown in Login Page
	When I Enter "test@test.com" in the User Email
	And I click on Login Button
	Then "Password required" error should thrown in Login Page
	Then I close the browser 
	
	