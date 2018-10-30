Feature: Timecards Page

@Timecards_001
Scenario: Verify error is thrown when user approve missing punch under "Missing Punches" in Timecards Page
	Given URL in the browser
	Then Login page should displayed
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	Then "Overtime Hours" should displayed
	Then I wait for 5 seconds
	When I click on "Missing Punches" in the Timecards Page
	And I click on "First Missing Punch Checkbox" button in the Timecards Page
	And I click on "Approve" button in the Timecards Page
	Then "Cannot Approve Timecard(s)" should displayed
	And I click on "Cancel" button in the Timecards Page
	
	
@Timecards_002
Scenario: Approve Timecard under "Not Approved" in Timecards Page
	Then I wait for 5 seconds
	When I click on "Not Approved" in the Timecards Page
	And I click on "First No Missing Punch Checkbox" button in the Timecards Page
	And I click on "Approve" button in the Timecards Page
	Then I click on "OK" in the Timecards Page 
	
@Timecards_003
Scenario: Verify error is thrown when user is able to approve missing punch under "Not Approved" in Timecards Page
	Then I wait for 5 seconds
	When I click on "Not Approved" in the Timecards Page
	And I click on "First Missing Punch Checkbox" button in the Timecards Page
	And I click on "Approve" button in the Timecards Page
	Then "Cannot Approve Timecard(s)" should displayed
	And I click on "Cancel" button in the Timecards Page
	
@Timecards_004
Scenario: Verify error is thrown when user approve the combination of valid and missing punch under "Not Approved" in Timecards Page
	Then I wait for 5 seconds
	When I click on "Not Approved" in the Timecards Page
	And I click on "First Missing Punch Checkbox" button in the Timecards Page
	And I click on "First No Missing Punch Checkbox" button in the Timecards Page
	And I click on "Approve" button in the Timecards Page
	Then "Cannot Approve Timecard(s)" should displayed
	And I click on "Cancel" button in the Timecards Page

@Timecards_005
Scenario: Delete the Timecard Entry under "Missing Punches" in Timecards Page
	Then I wait for 5 seconds
	When I click on "Missing Punches" in the Timecards Page
	And I click on "First Name" button in the Timecards Page
	And I delete the time entries of the employee

@Timecards_006
Scenario: Add the Timecard Entry under "Missing Punches" in Timecards Page
	When I click on "Not Approved" in the Timecards Page
	Then I wait for 5 seconds
	When I click on "Missing Punches" in the Timecards Page
	Then I wait for 5 seconds
	Then "Overtime Hours" should displayed
	And I click on "First Name" button in the Timecards Page
	When I when click Add Punch in the Timecards Page
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "22" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "01:22:00 am" should added to the "IN" time to the day "Tuesday" on TimeCard
	
Scenario: Close all the open browser
	Given Close all the open browser