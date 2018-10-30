Feature: Employee

@Employee_001 @Group_01
Scenario: Employee - Clock Pin validation
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
	And I Enter "1234" in the Clock Pin field; in Add Employee popup
	And I click on Add Employee Button; in Add Employee popup
	Then "Clock PIN must be unique" should displayed
	And I click on "CANCEL" button in the Employee Page
	Then I close the browser
	
@Employee_001 @Group_01
Scenario: Add an Employee with valid details
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
	
@Employee_002 @Group_01
Scenario: Employee Status Change - Active and Inactive
	When I wait for 2 seconds
	When I click the first employee
	When I wait for 5 seconds
	And Change Employee to "InActive"
	Then I click on Employee Menu in Homepage
	When I click on InActive link
	And I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	And Change Employee to "Active"
	Then I click on Employee Menu in Homepage
	Then Employee page should displayed
	And I Enter the recently used employee in the search box
	Then Searched employee should displayed 
	
@Employee_003 @Group_01
Scenario: Delete an existing Employee
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on Active link	
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed
	When I check the first employee 
	And I click on delete button
	Then Delete confirmation popup should displayed
	When I click on delete button; in Delete popup
	Then Employee record should deleted successfully
	Then I close the browser

@Employee_005
Scenario: Add an employee with changing Default Employee Level
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
	When I click on Default Employee Level; in Add Employee popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup		
	Then I click on Add Employee Button; in Add Employee popup
	#Search and verify the newly created customer
	When I click on search button
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed
	#Addding Timecards and verifying default level
	When I click the first employee
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "09:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard
	Then I verify the time "09:00:00" is entered in the Default level "2lvl"
	Then I close the browser		
	

@Employee_006
Scenario: Add an Employee with valid details after Changing Heirarchy in the Top(Open Bug: 149347441)
	Given URL in the browser
	Then Login page should displayed
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
	And I click on Login Button
	Then Home page should displayed
	When I click on Hierarchy Setting option from Top
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	And I store the value of Employee Record
	When I click on Add Employee Button
	Then Add Employee popup should displayed
	When I Enter "Automation" in the First Name field; in Add Employee popup
	And I Enter "Tester" in the Last Name field; in Add Employee popup
	And I Enter "ID" in the Employee ID field; in Add Employee popup
	Then I click on Add Employee Button; in Add Employee popup
	Then I wait for 5 seconds
	And I check employee record is increased by 1
	When I click on search button
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed
	Then I close the browser
	
@Employee_007
Scenario: Add an Employee with Add Another button
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
	Then I click on "Add Another" button in the Employee Page
	When I wait for 5 seconds
	When I Enter the recently created employee in the First Name box
	And I Enter "Tester" in the Last Name field; in Add Employee popup
	And I Enter "ID" in the Employee ID field; in Add Employee popup
	Then I click on Add Employee Button; in Add Employee popup	
	When I click on search button
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed
	And "1-2 of 2" should displayed
	
@Employee_008
Scenario: Multiple Delete of an Employee	
	And I click on Select All employee checkbox	
	And I click on delete button
	And "DELETE EMPLOYEES" should displayed
	When I click on delete button; in Delete popup
	Then Employee record should deleted successfully
	Then I close the browser
	

	
	
Scenario: Close all the open browser
	Given Close all the open browser
	
	