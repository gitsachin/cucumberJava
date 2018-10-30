Feature: Verification of Read only user

@ReadOnly_User_001
Scenario: Ready only User - Verifying Employee creation
	Given "Test" URL in the browser
	Then Login page should displayed
	When I Enter "readonlyuser@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed	
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	Then I wait for 5 seconds
	When I try to click on "Add Employee Button" in "Employee" Page
    Then "Add Employee Popup" should not displayed in "Employee" Page
   	When I click on setting option
	And I click on Logout
	Then Login page should displayed
	Then I close the browser 

@ReadOnly_User_002 @ReadOnly_Group01
Scenario: Ready only User - Verifying Adding Timecard entry
	Given URL in the browser
	Then Login page should displayed
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on Add Employee Button
	Then Add Employee popup should displayed
	When I Enter "Automation" in the First Name field; in Add Employee popup
	And I Enter "Tester" in the Last Name field; in Add Employee popup
	And I Enter "ID" in the Employee ID field; in Add Employee popup
	And I Enter "Clock" in the Clock Pin field; in Add Employee popup
	Then I click on Add Employee Button; in Add Employee popup
	When I click on search button
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed
	When I click the first employee
	#Adding Entry for Tuesday
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	#Then Time "09:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	#Then Time "06:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard
	When I click on setting option
	And I click on Logout
	Then Login page should displayed		
	When I Enter "readonlyuser@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	When I try to click on "Add Button" in "Employee" Page
	Then "Add Punch popup" should not displayed in "Employee" Page

@ReadOnly_User_003 @ReadOnly_Group01
Scenario: Ready only User - Verifying Approve Timecard
	When I wait for 2 seconds
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	Then "Approve Timecard Button" should not displayed in "Employee" Page 

	
@ReadOnly_User_007 @ReadOnly_Group01
Scenario: Ready only User - Verifying Add Device is not allowed
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click the first employee
	When I click on Device Tab in employee
	Then "Add Device Button" should not displayed in "Employee" Page
		
@ReadOnly_User_007 @ReadOnly_Group01
Scenario: Ready only User - Verifying Account Menu is not visible
	When I click on setting option
	Then "Account Menu" should not displayed in "Employee" Page
	
@ReadOnly_User_011 @ReadOnly_Group01
Scenario: Verify that an Adding Timecard is not allowed for an employee with Read Only Permission in Timecard Page
	When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	When I click on "Not Approved" in the Timecards Page
	Then I wait for 5 seconds
	Then "Overtime Hours" should displayed
	And I click on "First Name" button in the Timecards Page	
	Then "Add Button" should not displayed in "Timecards" Page

@ReadOnly_User_012 @ReadOnly_Group01
Scenario: Verify that an editing an existing Timecard is not allowed for an employee with Read Only Permission in Timecard Page
	When I click on "Not Approved" in the Timecards Page
	Then I wait for 5 seconds
	Then "Overtime Hours" should displayed
	And I click on "First Name" button in the Timecards Page	
	Then "Edit Option" should not displayed in "Timecards" Page
	
	@ReadOnly_User_013 @ReadOnly_Group01
Scenario: Verify that a deleting Timecard is not allowed for an employee with Read Only Permission in Timecard Page
	When I click on "Not Approved" in the Timecards Page
	Then I wait for 5 seconds
	Then "Overtime Hours" should displayed
	And I click on "First Name" button in the Timecards Page	
	Then "Remove Icon" should not displayed in "Timecards" Page
		
@ReadOnly_User_010 @ReadOnly_Group01
Scenario: Ready only User - Approve button should not visible in Timecards Page
	When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	When I click on "Not Approved" in the Timecards Page
	And I click on "First No Missing Punch Checkbox" button in the Timecards Page
	Then "Approve Button" should not displayed in "Timecards" Page
	

@ReadOnly_User_005 @ReadOnly_Group01
Scenario: Ready only User - Verifying Deleting Timecard entry	
	When I wait for 2 seconds
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	Then "Delete Timecard Button" should not displayed in "Employee" Page	
		
@ReadOnly_User_004 @ReadOnly_Group01
Scenario: Ready only User - Verifying Employee Status Change
	When I wait for 2 seconds
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	And I try to click on "Status Change" in "Employee" Page
	Then I click on Employee Menu in Homepage
	When I click on InActive link
	When I click on search button
	And I Enter the recently used employee in the search box
	Then "No employees found!" should displayed
	Then I close the browser	
	
	

@ReadOnly_User_006
Scenario: Ready only User - Verifying Unlock Timecard
	Given "Test" URL in the browser
	Then Login page should displayed
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
	And I click on Login Button
	Then Home page should displayed
	#Employee Creation
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on Add Employee Button
	Then Add Employee popup should displayed
	When I Enter "Automation" in the First Name field; in Add Employee popup
	And I Enter "Tester" in the Last Name field; in Add Employee popup
	And I Enter "ID" in the Employee ID field; in Add Employee popup
	Then I click on Add Employee Button; in Add Employee popup
	When I click on search button
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed
	When I click the first employee	
	#Adding Entry for Tuesday
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	#Then Time "09:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	#Then Time "06:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard		
	When I wait for 5 seconds
	When I click on Approve Button in the Employees Timechard
	Then Approve Selected Timecards popup should displayed
	When I click on Ok Button; in Approve Selected Timecards popup
	Then Timecard approved and locked message should displayed	
	When I click on setting option
	And I click on Logout
	Then Login page should displayed
	#Loging as Readonly User		
	When I Enter "readonlyuser@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	Then "Unlock Timecard Button" should not displayed in "Employee" Page
	Then I close the browser
	
	@ReadOnly_User_007
Scenario: Ready only User - Verifying Employee Deletion
	Given "Test" URL in the browser
	Then Login page should displayed
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on Add Employee Button
	Then Add Employee popup should displayed
	When I Enter "Automation" in the First Name field; in Add Employee popup
	And I Enter "Tester" in the Last Name field; in Add Employee popup
	And I Enter "ID" in the Employee ID field; in Add Employee popup
	And I Enter "Clock" in the Clock Pin field; in Add Employee popup
	Then I click on Add Employee Button; in Add Employee popup
	When I click on search button
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed
	When I click on setting option
	And I click on Logout
	Then Login page should displayed		
	When I Enter "readonlyuser@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I check the first employee 
	When I try to click on "Delete Employee Button" in "Employee" Page
	When I click on setting option
	And I click on Logout
	Then Login page should displayed	
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I check the first employee 
	And I click on delete button
	Then Delete confirmation popup should displayed
	When I click on delete button; in Delete popup
	Then Employee record should deleted successfully
	When I click on setting option
	And I click on Logout
	Then Login page should displayed
	
Scenario: Close all the open browser
	Given Close all the open browser
	