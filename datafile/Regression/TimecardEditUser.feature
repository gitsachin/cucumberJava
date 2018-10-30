Feature: Verification of Timecard Edit only user

@TimecardEdit_User_001
Scenario: Timecard Edit User - Verifying Employee creation is not allowed
	Given "Test" URL in the browser
	Then Login page should displayed
	When I Enter "edittimecard@findd.io" in the User Email
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

@TimecardEdit_User_002 
Scenario: Timecard Edit User - Verifying Adding Timecard entry is allowed
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
	When I click on setting option
	And I click on Logout
	Then Login page should displayed		
	When I Enter "edittimecard@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	When I Enter the recently used employee in the search box
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
	

@TimecardEdit_User_004 
Scenario: Timecard Edit User - Verifying Deleting Timecard entry is allowed	
	When I wait for 2 seconds
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	And I delete all the time entries of the employee
	Then All the time entry of the employee should deleted
		
			

@TimecardEdit_User_005 
Scenario: Timecard Edit User - Verifying Approve Timecard is not allowed
	When I wait for 2 seconds
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	Then "Approve Timecard Button" should not displayed in "Employee" Page 
		
@TimecardEdit_User_004
Scenario: Timecard Edit User - Verifying Employee Status Change  is not allowed
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
		

@TimecardEdit_User_006
Scenario: Timecard Edit User - Verifying Unlock Timecard is not allowed
	Given URL in the browser
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
	When I wait for 5 seconds
	When I click on Approve Button in the Employees Timechard
	Then Approve Selected Timecards popup should displayed
	When I click on Ok Button; in Approve Selected Timecards popup
	Then Timecard approved and locked message should displayed	
	When I click on setting option
	And I click on Logout
	Then Login page should displayed
	#Loging as Readonly User		
	When I Enter "edittimecard@findd.io" in the User Email
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
	
	@TimecardEdit_User_007
Scenario: Timecard Edit User - Verifying Employee Deletion is not allowed
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
	When I click on setting option
	And I click on Logout
	Then Login page should displayed		
	When I Enter "edittimecard@findd.io" in the User Email
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
	