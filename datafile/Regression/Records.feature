Feature: Verification of Exception in Records Page

@Exceptions_001
Scenario: Approving the Location Exception
	Given "Test" URL in the browser
	Then Login page should displayed
	When I Enter "autotester1@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed	
	When I click on Records Menu in Homepage
	Then Records page should displayed successfully
	When I click on "Not Reviewed" exceptions in the records page
	When I wait for 10 seconds
	And I click on first Location exception in the records page
	Then "Location Exception" should displayed in records page
	When I click on "ACCEPT" button in the exception
	Then Location Exception should get "Approved"
	
@Exceptions_002
Scenario: Rejecting the Location Exception
	When I click on Records Menu in Homepage
	Then Records page should displayed successfully
	When I click on "Location" exceptions in the records page
	When I wait for 10 seconds
	When I click on "Not Reviewed" exceptions in the records page
	When I wait for 10 seconds
	And I click on first Location exception in the records page
	Then "Location Exception" should displayed in records page
	When I click on "REJECT" button in the exception
	Then Location Exception should get "Rejected"
	
	
@Exceptions_003
Scenario: Approving the Biometric Exception
	When I click on Records Menu in Homepage
	Then Records page should displayed successfully
	When I click on "Not Reviewed" exceptions in the records page
	When I wait for 10 seconds
	And I click on first Biometric exception in the records page
	Then "Biometric Exception" should displayed in records page
	When I click on "This is" button in the exception
	Then Location Exception should get "Approved"
	
@Exceptions_004
Scenario: Reject the Biometric Exception
	When I click on Records Menu in Homepage
	Then Records page should displayed successfully
	When I click on "Location" exceptions in the records page
	When I wait for 10 seconds
	When I click on "Not Reviewed" exceptions in the records page
	When I wait for 10 seconds
	And I click on first Biometric exception in the records page
	Then "Biometric Exception" should displayed in records page
	When I click on "Reject / Unsure" button in the exception
	Then Location Exception should get "Rejected"
	
	
Scenario: Close all the open browser
	Given Close all the open browser
	