Feature: Employee Timecard Calculation


@Timecard_Calculation_001
Scenario: Timecard calculation - Single Entry for a Day
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
	When I set Hour as "11" , Min as "02" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "11:02:00 am" should added to the "IN" time to the day "Monday" on TimeCard
	When I when click Add Punch on "Monday"
	Then Add Punch popup is displayed
	When I set Hour as "01" , Min as "51" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "01:51:00" should added to the "OUT" time to the day "Monday" on TimeCard
	Then I verify "Total" is set as "2.82 hrs" to the day "Monday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "2.82 hrs" to the day "Monday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Monday" on TimeCard in "Automated Testing" Hierarchy

@Timecard_Calculation_002
Scenario: Timecard calculation - Multiple Entries for a Day
	#Adding Entry for Tuesday
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "45" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:45:00 am" should added to the "IN" time to the day "Tuesday" on TimeCard
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "17" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "09:17:00 am" should added to the "OUT" time to the day "Tuesday" on TimeCard
	Then I verify "Total" is set as "2.53 hrs" to the day "Tuesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "2.53 hrs" to the day "Tuesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Tuesday" on TimeCard in "Automated Testing" Hierarchy
	#Adding Entry for Tuesday
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "2" , Min as "19" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "02:19:00 pm" should added to the "IN" time to the day "Tuesday" on TimeCard
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "4" , Min as "04" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "04:04:00 pm" should added to the "OUT" time to the day "Tuesday" on TimeCard
	Then I verify "Total" is set as "4.28 hrs" to the day "Tuesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "4.28 hrs" to the day "Tuesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Tuesday" on TimeCard in "Automated Testing" Hierarchy

@Timecard_Calculation_003
Scenario: Timecard calculation - Missing Punch
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "10" , Min as "16" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "10:16:00 am" should added to the "IN" time to the day "Wednesday" on TimeCard
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "02" , Min as "21" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "02:21:00 pm" should added to the "OUT" time to the day "Wednesday" on TimeCard
	Then I verify "Total" is set as "4.08 hrs" to the day "Wednesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "4.08 hrs" to the day "Wednesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Wednesday" on TimeCard in "Automated Testing" Hierarchy
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "5" , Min as "42" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "05:42:00 pm" should added to the "IN" time to the day "Wednesday" on TimeCard
	Then I verify "Total" is set as "4.08 hrs" to the day "Wednesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "4.08 hrs" to the day "Wednesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Wednesday" on TimeCard in "Automated Testing" Hierarchy
	Then I close the browser 

@Timecard_Calculation_004
Scenario: Timecard calculation - Auto Swapping for a Day
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
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "45" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:45:00 am" should added to the "IN" time to the day "Thursday" on TimeCard
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "4" , Min as "17" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "04:17:00 pm" should added to the "OUT" time to the day "Thursday" on TimeCard
	Then I verify "Total" is set as "9.53 hrs" to the day "Thursday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "9.53 hrs" to the day "Thursday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Thursday" on TimeCard in "Automated Testing" Hierarchy
	#Adding Entry for Thursday
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "8" , Min as "19" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "08:19:00 pm" should added to the "IN" time to the day "Thursday" on TimeCard
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "04" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:45:00 am" should added to the "IN" time to the day "Thursday" on TimeCard
	Then Time "09:04:00 am" should added to the "OUT" time to the day "Thursday" on TimeCard
	Then Time "04:17:00 pm" should added to the "IN" time to the day "Thursday" on TimeCard
	Then Time "08:19:00 pm" should added to the "OUT" time to the day "Thursday" on TimeCard	
	Then I verify "Total" is set as "6.35 hrs" to the day "Thursday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "6.35 hrs" to the day "Thursday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Thursday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "6.35" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "6.35" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0" to the day "Total" on TimeCard in "Automated Testing" Hierarchy	
	Then I close the browser
	
	
@Timecard_Calculation_005
	Scenario: Timecard calculation - Overtime calculation
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
	When I set Hour as "7" , Min as "11" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "07:11:00 am" should added to the "IN" time to the day "Monday" on TimeCard
	When I when click Add Punch on "Monday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:00:00" should added to the "OUT" time to the day "Monday" on TimeCard
	Then I verify "Total" is set as "10.82 hrs" to the day "Monday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "10.82 hrs" to the day "Monday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Monday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "10.82" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "10.82" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	
	
	#Adding Entry for Tuesday
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "15" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "09:15:00 am" should added to the "IN" time to the day "Tuesday" on TimeCard
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "55" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:55:00 pm" should added to the "OUT" time to the day "Tuesday" on TimeCard
	Then I verify "Total" is set as "9.67 hrs" to the day "Tuesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "9.67 hrs" to the day "Tuesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Tuesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "20.48" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "20.48" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	
	#Adding Entry for Wednesday	
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "10" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "10:00:00 am" should added to the "IN" time to the day "Wednesday" on TimeCard
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "8" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "08:00:00 pm" should added to the "OUT" time to the day "Wednesday" on TimeCard
	Then I verify "Total" is set as "10 hrs" to the day "Wednesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "10 hrs" to the day "Wednesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Wednesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "30.48" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "30.48" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	
	#Adding Entry for Thursday
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "7" , Min as "19" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "07:19:00 am" should added to the "IN" time to the day "Thursday" on TimeCard
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "20" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:20:00" should added to the "OUT" time to the day "Thursday" on TimeCard
	Then I verify "Total" is set as "11.02 hrs" to the day "Thursday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "9.52 hrs" to the day "Thursday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "1.5 hrs" to the day "Thursday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "41.5" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "40" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "1.5" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	
	#Adding Entry for Friday
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed
	When I set Hour as "10" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "10:00:00 am" should added to the "IN" time to the day "Friday" on TimeCard
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:00:00 pm" should added to the "OUT" time to the day "Friday" on TimeCard
	Then I verify "Total" is set as "8 hrs" to the day "Friday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "0 hrs" to the day "Friday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "8 hrs" to the day "Friday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "49.5" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "40" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "9.5" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	
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
	Then I verify "Total" is set as "8 hrs" to the day "Friday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "0 hrs" to the day "Friday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "8 hrs" to the day "Friday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "57.5" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "40" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "17.5" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
		 
	#Adding Entry for Sunday
	When I when click Add Punch on "Sunday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "09:00:00 am" should added to the "IN" time to the day "Sunday" on TimeCard
	When I when click Add Punch on "Sunday"
	Then Add Punch popup is displayed
	When I set Hour as "11" , Min as "27" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "11:27:00 am" should added to the "OUT" time to the day "Sunday" on TimeCard
	Then I verify "Total" is set as "2.45 hrs" to the day "Sunday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "0 hrs" to the day "Sunday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "2.45 hrs" to the day "Sunday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "59.95" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "40" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "19.95" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I close the browser
	 
	
	
	
@Timecard_Calculation_006
	Scenario: Timecard calculation - Overtime calculation - Composite
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
	When I set Hour as "10" , Min as "12" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "10:12:00 am" should added to the "IN" time to the day "Monday" on TimeCard
	When I when click Add Punch on "Monday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "22" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "01:22:00" should added to the "OUT" time to the day "Monday" on TimeCard
	
	
	#Adding Entry for Monday on Position Level	
	When I when click Add Punch on "Monday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I set Hour as "2" , Min as "17" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Monday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "44" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	
	
	Then I verify "Total" is set as "7.62 hrs" to the day "Monday" on TimeCard in "" Hierarchy
	Then I verify "Reg" is set as "7.62 hrs" to the day "Monday" on TimeCard in "" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Monday" on TimeCard in "" Hierarchy
	
	#Adding Entry for Tuesday on Default Level
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "02" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "09:02:00 am" should added to the "IN" time to the day "Tuesday" on TimeCard
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "11" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "01:11:00 pm" should added to the "OUT" time to the day "Tuesday" on TimeCard
	When I get the date of timecard added by day "Tuesday" in Employee page
	
	#Adding Entry for Tuesday on Position Level
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I set Hour as "2" , Min as "24" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Tuesday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "33" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	
	
	Then I verify "Total" is set as "8.3 hrs" to the day "Tuesday" on TimeCard in "" Hierarchy
	Then I verify "Reg" is set as "8.3 hrs" to the day "Tuesday" on TimeCard in "" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Tuesday" on TimeCard in "" Hierarchy
	
	
	#Adding Entry for Wednesday on Default Level
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "9" , Min as "21" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "09:21:00 am" should added to the "IN" time to the day "Wednesday" on TimeCard
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "55" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "01:55:00 pm" should added to the "OUT" time to the day "Wednesday" on TimeCard
	When I get the date of timecard added by day "Wednesday" in Employee page
	
	#Adding Entry for Wednesday on Position Level
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I set Hour as "2" , Min as "34" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Wednesday"
	Then Add Punch popup is displayed
	When I set Hour as "7" , Min as "14" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	
	Then I verify "Total" is set as "9.23 hrs" to the day "Wednesday" on TimeCard in "" Hierarchy
	Then I verify "Reg" is set as "9.23 hrs" to the day "Wednesday" on TimeCard in "" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Wednesday" on TimeCard in "" Hierarchy
	
	
	#Adding Entry for Thursday on Default Level
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "8" , Min as "0" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "08:00:00 am" should added to the "IN" time to the day "Thursday" on TimeCard
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "0" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "01:00:00 pm" should added to the "OUT" time to the day "Thursday" on TimeCard
	When I get the date of timecard added by day "Thursday" in Employee page
	
	#Adding Entry for Thursday on Position Level
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I set Hour as "3" , Min as "23" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Thursday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "39" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then I verify "Total" is set as "8.27 hrs" to the day "Thursday" on TimeCard in "" Hierarchy
	Then I verify "Reg" is set as "8.27 hrs" to the day "Thursday" on TimeCard in "" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Thursday" on TimeCard in "" Hierarchy
	
	#Adding Entry for Friday on Default Level
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed
	When I set Hour as "2" , Min as "21" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "02:21:00" should added to the "IN" time to the day "Friday" on TimeCard
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "45" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:45:00" should added to the "OUT" time to the day "Friday" on TimeCard
	When I get the date of timecard added by day "Friday" in Employee page
	
	#Adding Entry for Friday on Position Level
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I set Hour as "9" , Min as "22" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Friday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup
	When I set Hour as "1" , Min as "40" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	
	Then I verify "Total" is set as "8.7 hrs" to the day "Friday" on TimeCard in "" Hierarchy
	Then I verify "Reg" is set as "6.58 hrs" to the day "Friday" on TimeCard in "" Hierarchy
	Then I verify "OT1" is set as "2.12 hrs" to the day "Friday" on TimeCard in "" Hierarchy
	

	#Adding Entry for Saturday on Default Level
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed
	When I set Hour as "2" , Min as "55" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "02:55:00" should added to the "IN" time to the day "Saturday" on TimeCard
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed
	When I set Hour as "6" , Min as "47" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	Then Time "06:47:00" should added to the "OUT" time to the day "Saturday" on TimeCard
	When I get the date of timecard added by day "Saturday" in Employee page
	
	#Adding Entry for Saturday on Position Level
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed	
	When I click the Punch Level; in Add Punch Popup
	Then Choose Hierarchy Item popup is displayed
	When I choose Location as "2lvl"; in Choose Hierarchy Item Popup
	And I click on Ok button; in Choose Hierarchy Item Popup	
	When I set Hour as "9" , Min as "56" and periods as "AM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup	
	When I when click Add Punch on "Saturday"
	Then Add Punch popup is displayed
	When I set Hour as "1" , Min as "57" and periods as "PM" ;in Add Punch Popup
	And I click on Add Punch Button ;in Add Punch Popup
	
	Then I verify "Total" is set as "7.88 hrs" to the day "Saturday" on TimeCard in "" Hierarchy
	Then I verify "Reg" is set as "0 hrs" to the day "Saturday" on TimeCard in "" Hierarchy
	Then I verify "OT1" is set as "7.88 hrs" to the day "Saturday" on TimeCard in "" Hierarchy
	
	Then I verify "Total" is set as "50" to the day "Total" on TimeCard in "" Hierarchy
	Then I verify "Reg" is set as "40" to the day "Total" on TimeCard in "" Hierarchy
	Then I verify "OT1" is set as "10" to the day "Total" on TimeCard in "" Hierarchy
	
		
	#Verify the time card in Show Component Timecards view	
	When I click on Show Component Timecards 
	
	
	Then I verify "Total" is set as "3.17 hrs" to the day "Monday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "3.17 hrs" to the day "Monday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Monday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "4.45 hrs" to the day "Monday" on TimeCard in "2lvl" Hierarchy
	Then I verify "Reg" is set as "4.45 hrs" to the day "Monday" on TimeCard in "2lvl" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Monday" on TimeCard in "2lvl" Hierarchy
	
	Then I verify "Total" is set as "4.15 hrs" to the day "Tuesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "4.15 hrs" to the day "Tuesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Tuesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "4.15 hrs" to the day "Tuesday" on TimeCard in "2lvl" Hierarchy
	Then I verify "Reg" is set as "4.15 hrs" to the day "Tuesday" on TimeCard in "2lvl" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Tuesday" on TimeCard in "2lvl" Hierarchy
	
	Then I verify "Total" is set as "4.57 hrs" to the day "Wednesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "4.57 hrs" to the day "Wednesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Wednesday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "4.67 hrs" to the day "Wednesday" on TimeCard in "2lvl" Hierarchy
	Then I verify "Reg" is set as "4.67 hrs" to the day "Wednesday" on TimeCard in "2lvl" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Wednesday" on TimeCard in "2lvl" Hierarchy
	
	
	Then I verify "Total" is set as "5 hrs" to the day "Thursday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "5 hrs" to the day "Thursday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Thursday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "3.27 hrs" to the day "Thursday" on TimeCard in "2lvl" Hierarchy
	Then I verify "Reg" is set as "3.27 hrs" to the day "Thursday" on TimeCard in "2lvl" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Thursday" on TimeCard in "2lvl" Hierarchy
	
	
	Then I verify "Total" is set as "4.4 hrs" to the day "Friday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "2.28 hrs" to the day "Friday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "2.12 hrs" to the day "Friday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "4.3 hrs" to the day "Friday" on TimeCard in "2lvl" Hierarchy
	Then I verify "Reg" is set as "4.3 hrs" to the day "Friday" on TimeCard in "2lvl" Hierarchy
	Then I verify "OT1" is set as "0 hrs" to the day "Friday" on TimeCard in "2lvl" Hierarchy
	
	
	Then I verify "Total" is set as "3.87 hrs" to the day "Saturday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "0 hrs" to the day "Saturday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "3.87 hrs" to the day "Saturday" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "4.02 hrs" to the day "Saturday" on TimeCard in "2lvl" Hierarchy
	Then I verify "Reg" is set as "0 hrs" to the day "Saturday" on TimeCard in "2lvl" Hierarchy
	Then I verify "OT1" is set as "4.02 hrs" to the day "Saturday" on TimeCard in "2lvl" Hierarchy
	
	
	Then I verify "Total" is set as "25.15" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Reg" is set as "19.17" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "OT1" is set as "5.98" to the day "Total" on TimeCard in "Automated Testing" Hierarchy
	Then I verify "Total" is set as "24.85" to the day "Total" on TimeCard in "2lvl" Hierarchy
	Then I verify "Reg" is set as "20.83" to the day "Total" on TimeCard in "2lvl" Hierarchy
	Then I verify "OT1" is set as "4.02" to the day "Total" on TimeCard in "2lvl" Hierarchy
	Then I close the browser

Scenario: Close all the open browser
	Given Close all the open browser
