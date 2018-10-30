Feature: Verification of Admin Account User Permission

@AdminAccount_User_001
Scenario: Admin Account User - Verifying Employee creation is not allowed
	Given "Test" URL in the browser
	Then Login page should displayed
	When I Enter "accountadmin@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed	
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	Then I wait for 5 seconds
	When I try to click on "Add Employee Button" in "Employee" Page
    Then "Add Employee Popup" should not displayed in "Employee" Page


	

@AdminAccount_User_0041
Scenario: Verify that an add device for an employee is not allowed for an employee with Admin Account user Permission
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click the first employee
	When I click on Device Tab in employee
	Then "Add Device Button" should not displayed in "Employee" Page
	
@AdminAccount_User_0043
Scenario: Verify that an Adding Timecard is not allowed for an employee with Admin Account user Permission in Timecard Page
	When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	When I click on "Not Approved" in the Timecards Page
	Then I wait for 5 seconds
	Then "Overtime Hours" should displayed
	And I click on "First Name" button in the Timecards Page	
	Then "Add Button" should not displayed in "Timecards" Page

@AdminAccount_User_0045
Scenario: Verify that an editing an existing Timecard is not allowed for an employee with  Admin Account user Permission in Timecard Page
	When I click on "Not Approved" in the Timecards Page
	Then I wait for 5 seconds
	Then "Overtime Hours" should displayed
	And I click on "First Name" button in the Timecards Page	
	Then "Edit Option" should not displayed in "Timecards" Page
	
@AdminAccount_User_0046
Scenario: Verify that a deleting Timecard is not allowed for an employee with Admin Account user Permission in Timecard Page
	When I click on "Not Approved" in the Timecards Page
	Then I wait for 5 seconds
	Then "Overtime Hours" should displayed
	And I click on "First Name" button in the Timecards Page	
	Then "Remove Icon" should not displayed in "Timecards" Page
		
		
	When I click on setting option
	And I click on Logout
	Then Login page should displayed
	Then I close the browser 



@AdminAccount_002 
Scenario: Admin Account User - Verifying Adding Timecard entry is not allowed
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
	When I Enter "accountadmin@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	When I try to click on "Add Button" in "Employee" Page
	Then "Add Punch popup" should not displayed in "Employee" Page

@AdminAccount_User_003
Scenario: Admin Account User - Verifying Approve Timecard is not allowed
	When I wait for 2 seconds
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	Then "Approve Timecard Button" should not displayed in "Employee" Page 
	
@AdminAccount_User_004
Scenario: Admin Account User - Verifying Deleting Timecard entry is not allowed	
	When I wait for 2 seconds
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	Then "Delete Timecard Button" should not displayed in "Employee" Page	
		
@AdminAccount_User_005
Scenario: Admin Account User - Verifying Employee Status Change is not allowed
	When I wait for 2 seconds
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	And I try to click on "Status Change" in "Employee" Page
	Then I click on Employee Menu in Homepage
	When I click on InActive link
	And I Enter the recently used employee in the search box
	Then "0-0 of 0" should displayed
	Then I close the browser	
	
	

@AdminAccount_User_006
Scenario: Admin Account User - Verifying Unlock Timecard is not allowed
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
	When I Enter "accountadmin@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	Then "Unlock Timecard Button" should not displayed in "Employee" Page
	Then I close the browser
	
	@AdminAccount_User_007
Scenario: Admin Account User - Verifying Employee Deletion is not allowed
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
	Then I click on Add Employee Button; in Add Employee popup
	When I click on search button
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed
	When I click on setting option
	And I click on Logout
	Then Login page should displayed		
	When I Enter "accountadmin@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
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

@AdminAccount_User_011
Scenario:  Admin Account User - Create a New Position
	Given URL in the browser
	Then Login page should displayed
	When I Enter "accountadmin@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on setting option
	And I click on Account
	Then Account page should displayed
	When I wait for 5 seconds	
	When I click on "Positions" tab in the Account Page
	When I click on "Add Position" Button in the Account Page
	Then "Add New Position" Popup should displayed
	When I Enter "Automation" in the Name field; in "Add New Position" popup
	When I Enter "1111" in the "Cost Center" field; in "Add New Position" popup
	When I Enter "Automation" in the "Description" field; in "Add New Position" popup
	When I click on Add Position button; in Add New Position popup
	Then New position should added successfully	
	
		
@AdminAccount_User_011
Scenario:  Admin Account User - To Edit Position	
	When I click on the Newly added position in the Account Page
	Then "Edit Position" Popup should displayed
	When I Enter "U1111" in the "Cost Center" field; in "Edit Position" popup
	When I click on "Save" button; in "Edit Position" Popup

@AdminAccount_User_012
Scenario:  Admin Account User - To Add Required Task to Position
	When I click on the Newly added position in the Account Page
	Then "Edit Position" Popup should displayed
	When I click on "Add Required Task" button; in "Edit Position" Popup
	When I Enter "T111" in the "Required Tasks - Code" field; in "Edit Position" popup
	When I Enter "Task RT1" in the "Required Tasks - Name" field; in "Edit Position" popup
	When I click on "Create Required Task" button; in "Edit Position" Popup
	Then I verify Task "Task RT1" is created successfully in "Required Tasks"; in "Edit Position" Popup
	When I click on "Save" button; in "Edit Position" Popup

@AdminAccount_User_013
Scenario:  Admin Account User - To Add Optional Task to Position
	When I click on the Newly added position in the Account Page
	Then "Edit Position" Popup should displayed
	When I click on "Add Optional Task" button; in "Edit Position" Popup
	When I Enter "T111" in the "Optional Tasks - Code" field; in "Edit Position" popup
	When I Enter "Task OT1" in the "Optional Tasks - Name" field; in "Edit Position" popup
	When I click on "Create Optional Task" button; in "Edit Position" Popup
	Then I verify Task "Task OT1" is created successfully in "Optional Tasks"; in "Edit Position" Popup
	When I click on "Save" button; in "Edit Position" Popup
	And I close the browser

@AdminAccount_User_008 @AAUser_Group_01
Scenario: Admin Account User - Create a new Account User
	Given URL in the browser
	Then Login page should displayed
	When I Enter "accountadmin@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on setting option
	And I click on Account
	Then Account page should displayed
	When I wait for 5 seconds
	When I click on Add User Button in the Account page
	Then Add Account User popup should displayed
	When I wait for 5 seconds
	When I Enter "Automation" in the First Name field; in Add Account User popup
	And I Enter "Tester" in the Last Name field; in Add Account User popup
	And I Enter "ID" in the Email ID field; in Add Account User popup
	And I Enter "Password" in the Password field; in Add Account User popup
	And I Enter "Password" in the Password Confirmation field; in Add Account User popup
	And I click on Add Employee Button; in Add Account User popup
	Then I verify user is created successfully
	When I click on setting option
	And I click on Logout
	Then Login page should displayed
	When I Enter Newly created UserId in the User Email
	And I Enter "Password" in the User Password
	And I click on Login Button
	Then Home page should displayed	
	When I click on setting option
	And I click on Logout
	When I wait for 3 seconds
	Then Login page should displayed
	
@AdminAccount_User_009 @AAUser_Group_01
Scenario:  Admin Account User - Change the password through Admin Account and Login	
	When I Enter "accountadmin@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on setting option
	And I click on Account
	Then Account page should displayed
	When I wait for 5 seconds
	When I click on newly created user to edit in Account Page
	Then Edit User popup should displayed
	And I Enter "Password1" in the Password field; in Add Account User popup
	And I Enter "Password1" in the Password Confirmation field; in Add Account User popup
	When I click on Save button; in Edit User popup 
	When I click on setting option
	And I click on Logout
	Then Login page should displayed
	When I Enter Newly created UserId in the User Email
	And I Enter "Password1" in the User Password
	And I click on Login Button
	Then Home page should displayed
	Then I verify logged user as newly created user
	When I click on setting option
	And I click on Logout
	Then Login page should displayed 
		

@AdminAccount_User_010 @AAUser_Group_01
Scenario:  Admin Account User - Delete the User Account
	When I Enter "accountadmin@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on setting option
	And I click on Account
	Then Account page should displayed
	When I wait for 5 seconds	
	When I select the newly created Account User in Account Page
	When I Click on delete button in Account Page
	Then Delete User popup should displayed
	When I click on delete button; in Delete User popup
	Then Account User should deleted in Account Pagee 
	When I click on setting option
	And I click on Logout
	Then Login page should displayed 
	And I close the browser
	
Scenario: Close all the open browser
	Given Close all the open browser
	