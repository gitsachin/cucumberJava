Feature: Login

@Login_001
Scenario Outline: Login with valid credential 
	Given "<ENV>" URL in the browser
	Then Login page should displayed
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
	And I click on Login Button
	Then Home page should displayed	
	When I click on setting option
	And I click on Logout
	Then Login page should displayed
	Then I close the browser 

@Test
Examples:
| ENV  |
| Test |

@Dev
Examples:
| ENV  |
| Dev |

	
@Login_002
Scenario Outline: Login with Invalid credential
	Given "<ENV>" URL in the browser
	Then Login page should displayed
	When I Enter "test@test.com" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then "Oops! that email / password combination is not valid." error should thrown in Login Page
	Then I close the browser 
	
@Test
Examples:
| ENV  |
| Test |

@Dev
Examples:
| ENV  |
| Dev |
	
	
@Login_003
Scenario Outline: Login with missing mandatory fields
	Given "<ENV>" URL in the browser
	Then Login page should displayed
	When I click on Login Button
	Then "Valid email address required" error should thrown in Login Page
	When I Enter "test@test.com" in the User Email
	And I click on Login Button
	Then "Password required" error should thrown in Login Page
	Then I close the browser 

@Test
Examples:
| ENV  |
| Test |

@Dev
Examples:
| ENV  |
| Dev |

Scenario: Close all the open browser
	Given Close all the open browser
	
	