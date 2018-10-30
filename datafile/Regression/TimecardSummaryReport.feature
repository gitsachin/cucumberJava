Feature: Timecard Summary Report

@TimeSummaryReport_001
Scenario: Timecard Summary Report - Default
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
	When I set Hour as "10" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "10:00:00" should added to the "IN" time to the day "Monday" on TimeCard
	When I when click Add Punch on "Monday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:00:00" should added to the "OUT" time to the day "Monday" on TimeCard
	#Adding Entry for Tuesday
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "09:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard
	#Adding Entry for Wednesday	
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "10" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "10:00:00" should added to the "IN" time to the day "Wednesday" on TimeCard
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "4" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "04:00:00" should added to the "OUT" time to the day "Wednesday" on TimeCard
	#Adding Entry for Thursday
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "09:00:00" should added to the "IN" time to the day "Thursday" on TimeCard
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:00:00" should added to the "OUT" time to the day "Thursday" on TimeCard
	#Adding Entry for Friday
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed
	When I set Hour as "10" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "10:00:00" should added to the "IN" time to the day "Friday" on TimeCard
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:00:00" should added to the "OUT" time to the day "Friday" on TimeCard
	#Adding Entry for Saturday
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed
	When I set Hour as "10" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "10:00:00" should added to the "IN" time to the day "Saturday" on TimeCard
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:00:00" should added to the "OUT" time to the day "Saturday" on TimeCard
	#Approving the Timecard
	When I wait for 5 seconds
	When I click on Approve Button in the Employees Timechard
	Then Approve Selected Timecards popup should displayed
	When I click on Ok Button; in Approve Selected Timecards popup
	Then Timecard approved and locked message should displayed
	#Verify the Timecard Summary Report
	When I wait for 5 seconds
	When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	And I delete on the existing "timecard-summary-report_" files in the temp folder
	When I click on Download Reports in the Timecards page
	And I select "Timecard Summary Report" in the Timecards page
	When I wait for 3 seconds
	Then "Timecard Summary Report" popup should displayed
	When I click on Download button; in "Timecard Summary Report" popup
	Then Timecard Summary Report should downloaded
	Then I verify "Day 1" value as "8" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 2" value as "9" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 3" value as "6" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 4" value as "9" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 5" value as "8" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 6" value as "8" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 7" value as "0" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Reg Hours" value as "40" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "OT Hours" value as "8" in "Default" Hierarchy for newly added employee in Timecard Summary Report
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
	
@TimeSummaryReport_002
Scenario: Timecard Summary Report - Composite
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
	
	
	#Adding Entry for Monday on Default Level
	When I when click Add Punch on "Monday"
	Then Add Punch popup is displayed
	When I set Hour as "10" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "10:00:00" should added to the "IN" time to the day "Monday" on TimeCard
	When I when click Add Punch on "Monday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "01:00:00" should added to the "OUT" time to the day "Monday" on TimeCard
	When I get the date of timecard added by day "Monday" in Employee page
	
	#Adding Entry for Monday on Position Level
	When I when click Add Punch on "Monday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I set Hour as "2" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Monday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	
	
	
	#Adding Entry for Tuesday on Default Level
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "09:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "01:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard
	When I get the date of timecard added by day "Tuesday" in Employee page
	
	#Adding Entry for Tuesday on Position Level
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I set Hour as "2" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	
	
	
	#Adding Entry for Wednesday on Default Level
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "09:00:00" should added to the "IN" time to the day "Wednesday" on TimeCard
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "01:00:00" should added to the "OUT" time to the day "Wednesday" on TimeCard
	When I get the date of timecard added by day "Wednesday" in Employee page
	
	#Adding Entry for Wednesday on Position Level
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I set Hour as "2" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "7" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	
	
	#Adding Entry for Thursday on Default Level
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "8" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "08:00:00" should added to the "IN" time to the day "Thursday" on TimeCard
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "01:00:00" should added to the "OUT" time to the day "Thursday" on TimeCard
	When I get the date of timecard added by day "Thursday" in Employee page
	
	#Adding Entry for Thursday on Position Level
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I set Hour as "3" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	
	#Adding Entry for Friday on Default Level
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed
	When I set Hour as "2" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "02:00:00" should added to the "IN" time to the day "Friday" on TimeCard
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:00:00" should added to the "OUT" time to the day "Friday" on TimeCard
	When I get the date of timecard added by day "Friday" in Employee page
	
	#Adding Entry for Friday on Position Level
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I set Hour as "9" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup
	When I set Hour as "1" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	

	#Adding Entry for Saturday on Default Level
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed
	When I set Hour as "2" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "02:00:00" should added to the "IN" time to the day "Saturday" on TimeCard
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:00:00" should added to the "OUT" time to the day "Saturday" on TimeCard
	When I get the date of timecard added by day "Saturday" in Employee page
	
	#Adding Entry for Saturday on Position Level
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I set Hour as "9" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
		
	#Verify the time card in Show Component Timecards view	
	When I click on Show Component Timecards 
	Then Time "10:00:00" should added to the "IN" time to the day "Monday" on TimeCard "Automated Testing" Hierarchy
	Then Time "01:00:00" should added to the "OUT" time to the day "Monday" on TimeCard "Automated Testing" Hierarchy
	Then Time "09:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard "Automated Testing" Hierarchy
	Then Time "01:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard "Automated Testing" Hierarchy	
	
	Then Time "09:00:00" should added to the "IN" time to the day "Wednesday" on TimeCard "Automated Testing" Hierarchy
	Then Time "01:00:00" should added to the "OUT" time to the day "Wednesday" on TimeCard "Automated Testing" Hierarchy
	Then Time "08:00:00" should added to the "IN" time to the day "Thursday" on TimeCard "Automated Testing" Hierarchy
	Then Time "01:00:00" should added to the "OUT" time to the day "Thursday" on TimeCard "Automated Testing" Hierarchy	
	
	Then Time "02:00:00" should added to the "IN" time to the day "Friday" on TimeCard "Automated Testing" Hierarchy
	Then Time "06:00:00" should added to the "OUT" time to the day "Friday" on TimeCard "Automated Testing" Hierarchy
	Then Time "02:00:00" should added to the "IN" time to the day "Saturday" on TimeCard "Automated Testing" Hierarchy
	Then Time "06:00:00" should added to the "OUT" time to the day "Saturday" on TimeCard "Automated Testing" Hierarchy	
	
	Then Time "02:00:00" should added to the "IN" time to the day "Monday" on TimeCard "2lvl" Hierarchy
	Then Time "06:00:00" should added to the "OUT" time to the day "Monday" on TimeCard "2lvl" Hierarchy
	Then Time "02:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard "2lvl" Hierarchy
	Then Time "06:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard "2lvl" Hierarchy
	Then Time "02:00:00" should added to the "IN" time to the day "Wednesday" on TimeCard "2lvl" Hierarchy
	Then Time "07:00:00" should added to the "OUT" time to the day "Wednesday" on TimeCard "2lvl" Hierarchy
	Then Time "03:00:00" should added to the "IN" time to the day "Thursday" on TimeCard "2lvl" Hierarchy
	Then Time "06:00:00" should added to the "OUT" time to the day "Thursday" on TimeCard "2lvl" Hierarchy
	
	Then Time "09:00:00" should added to the "IN" time to the day "Friday" on TimeCard "2lvl" Hierarchy
	Then Time "01:00:00" should added to the "OUT" time to the day "Friday" on TimeCard "2lvl" Hierarchy
	Then Time "09:00:00" should added to the "IN" time to the day "Saturday" on TimeCard "2lvl" Hierarchy
	Then Time "01:00:00" should added to the "OUT" time to the day "Saturday" on TimeCard "2lvl" Hierarchy
	
	#Verify the Timecard Summary Report
	When I wait for 5 seconds
	When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	And I delete on the existing "timecard-summary-report_" files in the temp folder
	When I click on Download Reports in the Timecards page
	And I select "Timecard Summary Report" in the Timecards page
	When I wait for 3 seconds
	Then "Timecard Summary Report" popup should displayed	
	When I click on Download button; in "Timecard Summary Report" popup
	Then Timecard Summary Report should downloaded
	Then I verify "Day 1" value as "3" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 2" value as "4" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 3" value as "4" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 4" value as "5" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 5" value as "4" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 6" value as "4" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 7" value as "0" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Reg Hours" value as "20" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "OT Hours" value as "4" in "Default" Hierarchy for newly added employee in Timecard Summary Report
	
	Then I verify "Day 1" value as "4" in "2lvl" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 2" value as "4" in "2lvl" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 3" value as "5" in "2lvl" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 4" value as "3" in "2lvl" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 5" value as "4" in "2lvl" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 6" value as "4" in "2lvl" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Day 7" value as "0" in "2lvl" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "Reg Hours" value as "20" in "2lvl" Hierarchy for newly added employee in Timecard Summary Report
	Then I verify "OT Hours" value as "4" in "2lvl" Hierarchy for newly added employee in Timecard Summary Report
	
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
	
	