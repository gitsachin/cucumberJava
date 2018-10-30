Feature: Verification of Edit Employee User Verification

@EditEmployee_User_001
Scenario: Edit Employee - Verifying Employee creation is allowed
	Given "Test" URL in the browser
	Then Login page should displayed
	When I Enter "EditEmployee@findd.io" in the User Email
	And I Enter "password" in the User Password
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
	Then I close the browser
	 
@EditEmployee_User_002 @EditEmployee_Group01
Scenario: Edit Employee User - Verifying Adding Timecard entry is not allowed
	Given "Test" URL in the browser
	Then Login page should displayed
	When I Enter "EditEmployee@findd.io" in the User Email
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

@EditEmployee_User_003 @EditEmployee_Group01
Scenario: Edit Employee User - Verifying Approve Timecard
	When I wait for 2 seconds
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	Then "Approve Timecard Button" should not displayed in "Employee" Page 
	
@EditEmployee_User_005 @EditEmployee_Group01
Scenario: Edit Employee User - Verifying Deleting Timecard entry is not allowed	
	When I wait for 2 seconds
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	Then "Delete Timecard Button" should not displayed in "Employee" Page	
		
@EditEmployee_User_004 @EditEmployee_Group01
Scenario: Edit Employee - Verifying Employee Status Change is allowed
	When I wait for 2 seconds
	When I click the first employee
	When I wait for 5 seconds
	And Change Employee to "InActive"
	Then I click on Employee Menu in Homepage
	When I click on InActive link
	When I click on search button
	And I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	And Change Employee to "Active"
	Then I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	And I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	Then I close the browser	


@EditEmployee_User_006
Scenario: Edit Employee User - Verifying Unlock Timecard is not allowed
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
	#Loging as EditEmployee User		
	When I Enter "EditEmployee@findd.io" in the User Email
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
	
@EditEmployee_User_0041
Scenario: Verify that an add device for an employee is not allowed for an employee with Edit Employee Permission
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click the first employee
	When I click on Device Tab in employee
	Then "Add Device Button" should not displayed in "Employee" Page
	
	@EditEmployee_User_007
Scenario: Edit Employee User - Verifying Employee Deletion is allowed
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
		
@EditEmployee_User_0042
Scenario: Verify that an Account menu is not allowed available for an employee with Edit Employee Permission
	When I click on setting option
	Then "Account Menu" should not displayed in "Employee" Page
	
@EditEmployee_User_0043
Scenario: Verify that an Adding Timecard is not allowed for an employee with Edit Employee Permission in Timecard Page
	When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	When I click on "Not Approved" in the Timecards Page
	Then I wait for 5 seconds
	Then "Overtime Hours" should displayed
	And I click on "First Name" button in the Timecards Page	
	Then "Add Button" should not displayed in "Timecards" Page

@EditEmployee_User_0045
Scenario: Verify that an editing an existing Timecard is not allowed for an employee with Edit Employee Permission in Timecard Page
	When I click on "Not Approved" in the Timecards Page
	Then I wait for 5 seconds
	Then "Overtime Hours" should displayed
	And I click on "First Name" button in the Timecards Page	
	Then "Edit Option" should not displayed in "Timecards" Page
	
@EditEmployee_User_0046
Scenario: Verify that a deleting Timecard is not allowed for an employee with Edit Employee Permission in Timecard Page
	When I click on "Not Approved" in the Timecards Page
	Then I wait for 5 seconds
	Then "Overtime Hours" should displayed
	And I click on "First Name" button in the Timecards Page	
	Then "Remove Icon" should not displayed in "Timecards" Page
	Then I close the browser 




Scenario: Close all the open browser
	Given Close all the open browser
	