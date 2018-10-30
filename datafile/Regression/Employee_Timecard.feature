Feature: Employee Timecard


@Timecard_001
Scenario: Add Punch out - In & Out Time
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
	Then I wait for 3 seconds
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "22" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "01:22:00" should added to the "IN" time to the day "Tuesday" on TimeCard
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "2" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "02:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard
	

@Timecard_003
Scenario: Add Punch out - In & Out Time - Auto Swapping
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "2" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "02:00:00" should added to the "IN" time to the day "Wednesday" on TimeCard
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "10" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	Then Time "01:10:00" should added to the "IN" time to the day "Wednesday" on TimeCard
	Then Time "02:00:00" should added to the "OUT" time to the day "Wednesday" on TimeCard
	

@Timecard_004
Scenario: Approving the Timecard
	When I wait for 5 seconds
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	When I wait for 5 seconds
	When I click on Approve Button in the Employees Timechard
	Then Approve Selected Timecards popup should displayed
	When I click on Ok Button; in Approve Selected Timecards popup
	Then Timecard approved and locked message should displayed
	
@Timecard_005
Scenario: Unlock Timecard and update
	When I wait for 5 seconds
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	When I click on Unlock Button in the Employees Timechard
	Then Unlock Timecards popup should displayed
	When I click on Ok Button; in Unlock Timecard popup
	Then Timecard should unlocked successfully
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "10" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "01:10:00" should added to the "IN" time to the day "Saturday" on TimeCard
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed
	When I set Hour as "2" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "02:00:00" should added to the "OUT" time to the day "Saturday" on TimeCard	
		
	
@Timecard_006
Scenario: Deleting all the Time Entry
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed 
	When I click the first employee
	And I delete all the time entries of the employee
	Then All the time entry of the employee should deleted
	
	
@Timecard_007	
Scenario: Deleting the newly created employee
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed 
	When I check the first employee 
	And I click on delete button
	Then Delete confirmation popup should displayed
	When I click on delete button; in Delete popup
	Then Employee record should deleted successfully
		
@Timecard_008	
Scenario: Logout and close
	When I click on setting option
	And I click on Logout
	Then Login page should displayed
	Then I close the browser 

	

@Timecard_009
Scenario: Verifing the Show Composite Timecards View for Default and Position Hierarchy
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
	#Adding Entry for Tuesday on Default Level
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "09:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "11" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "11:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard
	
		
	#Adding Entry for Tuesday on Position Level
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I set Hour as "1" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "3" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	
	When I click on Show Component Timecards 
	Then Time "09:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard "Automated Testing" Hierarchy
	Then Time "11:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard "Automated Testing" Hierarchy
	Then Time "01:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard "2lvl" Hierarchy
	Then Time "03:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard "2lvl" Hierarchy
	#Deleting the Employee
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	And I Enter the recently created employee in the search box
	Then Searched employee should displayed 
	When I check the first employee 
	And I click on delete button
	Then Delete confirmation popup should displayed
	When I click on delete button; in Delete popup
	Then Employee record should deleted successfully
	#Logout and close browser
	When I click on setting option
	And I click on Logout
	Then Login page should displayed
	Then I close the browser

@Timecard_010
Scenario: Employee Page - Missing Punch - Approve should not allowed
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
	Then I wait for 3 seconds
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "22" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	When I click on Approve Button in the Employees Timechard
	Then "Cannot Approve Timecard(s)" should displayed
	
Scenario: Close all the open browser
	Given Close all the open browser