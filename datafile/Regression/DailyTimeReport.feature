Feature: Daily Time Report


@DailyTimeReport_001
Scenario: Daily Time Report - Default
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
	Then Time "09:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard
	When I get the date of timecard added by day "Tuesday" in Employee page
	
		
	#Approving the Timecard
	When I wait for 5 seconds
	When I click on Approve Button in the Employees Timechard
	Then Approve Selected Timecards popup should displayed
	When I click on Ok Button; in Approve Selected Timecards popup
	Then Timecard approved and locked message should displayed
	
	#Verify the Daily TimeReport Report
	When I wait for 5 seconds
	When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	And I delete on the existing "daily-time-report-" files in the temp folder
	When I click on Download Reports in the Timecards page
	And I select "Daily Time Report" in the Timecards page
	Then "Daily Time Report" popup should displayed
	When I select the Report Date with recently added timecard; in "Daily Time Report" Popup
	When I click on Download button; in "Daily Time Report" popup	
	Then Daily Time Report should downloaded		
	Then I verify "Clock In" value as "9:00 AM" for newly added employee in Daily Time Report
	Then I verify "Clock Out" value as "6:00 PM" for newly added employee in Daily Time Report
	Then I verify "Hours Worked" value as "9" for newly added employee in Daily Time Report
	Then I verify "Total Hours" value as "9" for newly added employee in Daily Time Report
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
	
	
	
@DailyTimeReport_002
Scenario: Daily Time Report - Composite
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
	When I get the date of timecard added by day "Tuesday" in Employee page
	
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "4" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "04:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "5" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "05:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard
		
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
	
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup
	When I set Hour as "5" , Min as "3" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "7" , Min as "3" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	#Verify the time card in Show Component Timecards view	
	When I click on Show Component Timecards 
	Then Time "09:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard "Automated Testing" Hierarchy
	Then Time "11:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard "Automated Testing" Hierarchy
	Then Time "04:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard "Automated Testing" Hierarchy
	Then Time "05:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard "Automated Testing" Hierarchy	
	Then Time "01:00:00" should added to the "IN" time to the day "Tuesday" on TimeCard "2lvl" Hierarchy
	Then Time "03:00:00" should added to the "OUT" time to the day "Tuesday" on TimeCard "2lvl" Hierarchy
	Then Time "05:30:00" should added to the "IN" time to the day "Tuesday" on TimeCard "2lvl" Hierarchy
	Then Time "07:30:00" should added to the "OUT" time to the day "Tuesday" on TimeCard "2lvl" Hierarchy
	
	#Verify the Daily TimeReport Report
	When I wait for 5 seconds
	When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	And I delete on the existing "daily-time-report-" files in the temp folder
	When I click on Download Reports in the Timecards page
	And I select "Daily Time Report" in the Timecards page
	Then "Daily Time Report" popup should displayed
	When I select the Report Date with recently added timecard; in "Daily Time Report" Popup
	When I click on Download button; in "Daily Time Report" popup	
	Then Daily Time Report should downloaded		
	Then I verify "Clock In" value as "9:00 AM" for newly added employee in Daily Time Report
	Then I verify "Clock Out" value as "5:00 PM" for newly added employee in Daily Time Report
	Then I verify "Hours Worked" value as "3" for newly added employee in Daily Time Report
	Then I verify "Total Hours" value as "3" for newly added employee in Daily Time Report
	
	
Scenario: Close all the open browser
	Given Close all the open browser
	