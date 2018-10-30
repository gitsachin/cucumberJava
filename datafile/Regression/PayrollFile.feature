Feature: Payroll File

@PayrollFile_001
Scenario: Payroll File

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
	#Adding Entry for Monday
	When I when click Add Punch on "Monday"
	Then Add Punch popup is displayed
	When I set Hour as "10" , Min as "30" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "10:30:00 am" should added to the "IN" time to the day "Monday" on TimeCard
	When I when click Add Punch on "Monday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:00:00 pm" should added to the "OUT" time to the day "Monday" on TimeCard
	#Adding Entry for Tuesday
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "44" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "09:44:00 am" should added to the "IN" time to the day "Tuesday" on TimeCard
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "22" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:22:00 pm" should added to the "OUT" time to the day "Tuesday" on TimeCard
	#Adding Entry for Wednesday	
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "10" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "10:00:00 am" should added to the "IN" time to the day "Wednesday" on TimeCard
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "4" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "04:00:00 pm" should added to the "OUT" time to the day "Wednesday" on TimeCard
	#Adding Entry for Thursday
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "09:00:00 am" should added to the "IN" time to the day "Thursday" on TimeCard
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:00:00 pm" should added to the "OUT" time to the day "Thursday" on TimeCard
	#Adding Entry for Friday
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed
	When I set Hour as "10" , Min as "10" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "10:10:00 am" should added to the "IN" time to the day "Friday" on TimeCard
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:00:00 pm" should added to the "OUT" time to the day "Friday" on TimeCard
	#Adding Entry for Saturday
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed
	When I set Hour as "10" , Min as "40" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "10:40:00 am" should added to the "IN" time to the day "Saturday" on TimeCard
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "8" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:08:00 pm" should added to the "OUT" time to the day "Saturday" on TimeCard
	#Approving the Timecard
	When I wait for 2 seconds
	When I click on Approve Button in the Employees Timechard
	Then Approve Selected Timecards popup should displayed
	When I click on Ok Button; in Approve Selected Timecards popup
	Then Timecard approved and locked message should displayed
	
	
	#Verify the Payroll File
	When I wait for 5 seconds
	When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	Then I wait for 4 seconds
	And I delete on the existing "Automated_Testing-" files in the temp folder
	When I click on Download Payroll File in Timecards Page	
	Then Payroll File should downloaded				
	Then I verify "Reg" value as "40" for newly added employee in Payroll File
	Then I verify "OT" value as "6.43" for newly added employee in Payroll File
	
	#Deleting the Employee
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I search with first employee in the result
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
	
Scenario: Close all the open browser
	Given Close all the open browser
	