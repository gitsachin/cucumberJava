Feature: Account

@Account_001
Scenario: Create a new Account User
	Given URL in the browser
	Then Login page should displayed
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
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
	
@Account_002
Scenario: Change the password through Admin Account and Login	
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
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

@Account_003
Scenario: Change the password through My Account and Login	
	When I click on setting option
	And I click on Profile
	Then Profile popup should displayed	
	And I Enter "Password2" in the Password field; in Profile popup
	And I Enter "Password2" in the Password Confirmation field; in Profile popup
	When I click on Save button; in Profile popup 
	When I click on setting option
	And I click on Logout
	Then Login page should displayed
	When I Enter Newly created UserId in the User Email
	And I Enter "Password2" in the User Password
	And I click on Login Button
	Then Home page should displayed	
	When I click on setting option
	And I click on Logout
	When I wait for 3 seconds
	Then Login page should displayed 

@Account_004
Scenario: Delete the User Account
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
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
	
	
@Position_001 @Position
Scenario: Create a New Position
	Given URL in the browser
	Then Login page should displayed
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
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
	
		
@Position_002 @Position
Scenario: To Edit Position	
	When I click on the Newly added position in the Account Page
	Then "Edit Position" Popup should displayed
	When I Enter "U1111" in the "Cost Center" field; in "Edit Position" popup
	When I click on "Save" button; in "Edit Position" Popup

@Position_003 @Position
Scenario: To Add Required Task to Position
	When I click on the Newly added position in the Account Page
	Then "Edit Position" Popup should displayed
	When I click on "Add Required Task" button; in "Edit Position" Popup
	When I Enter "T111" in the "Required Tasks - Code" field; in "Edit Position" popup
	When I Enter "Task RT1" in the "Required Tasks - Name" field; in "Edit Position" popup
	When I click on "Create Required Task" button; in "Edit Position" Popup
	Then I verify Task "Task RT1" is created successfully in "Required Tasks"; in "Edit Position" Popup
	When I click on "Save" button; in "Edit Position" Popup

@Position_004 @Position
Scenario: To Add Optional Task to Position
	When I click on the Newly added position in the Account Page
	Then "Edit Position" Popup should displayed
	When I click on "Add Optional Task" button; in "Edit Position" Popup
	When I Enter "T111" in the "Optional Tasks - Code" field; in "Edit Position" popup
	When I Enter "Task OT1" in the "Optional Tasks - Name" field; in "Edit Position" popup
	When I click on "Create Optional Task" button; in "Edit Position" Popup
	Then I verify Task "Task OT1" is created successfully in "Optional Tasks"; in "Edit Position" Popup
	When I click on "Save" button; in "Edit Position" Popup
	And I close the browser

@Hierarchy_001 @Hierarchy
Scenario: Creating a Level1 Hierarchy
	Given URL in the browser
	Then Login page should displayed
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on setting option
	And I click on Account
	When I wait for 5 seconds
	Then Account page should displayed
	When I click on "Hierarchy" tab in the Account Page
	When I wait for 5 seconds
	When I click on "Add Hierarchy" Button in the Account Page
	When I wait for 5 seconds
	Then "ADD HIERARCHY ITEM" Popup should displayed
	When I Enter "Automation" in the Location Name field; in "ADD HIERARCHY ITEM" popup
	When I click on "Add Item" button; in "ADD HIERARCHY ITEM" Popup
	When I wait for 2 seconds
	Then New Location should added successfully

@Hierarchy_002 @Hierarchy		
Scenario: Search by Level1
	When I wait for 5 seconds
	When I click on "Search Hierarchy" Button in the Account Page
	When I wait for 2 seconds
	When I Enter Recently created Hierarchy Item in the "Search Hierarchy" field
	Then New Location should added successfully

@Hierarchy_003 @Hierarchy
Scenario: Creating a Level2 Hierarchy		
   	When I click on the Newly added Location in the Account Page
	When I wait for 2 seconds
	When I click on "Add Hierarchy" Button in the Account Page
	Then "ADD HIERARCHY ITEM" Popup should displayed	
	When I Enter "Level1" in the "Add Level" field; in "ADD HIERARCHY ITEM" popup
	When I click on "ADD ITEM" button; in "ADD HIERARCHY ITEM" Popup
	Then I verify "Level1" is displayed in the result
		
@Hierarchy_004 @Hierarchy
Scenario: Checking for Select Position popup
	When I click on "Details" button in the Account Page
	When I click on "Details view : Add Position" Button in the Account Page
	Then "Select Position" Popup should displayed
	Then I close the browser

Scenario: Close all the open browser
	Given Close all the open browser
