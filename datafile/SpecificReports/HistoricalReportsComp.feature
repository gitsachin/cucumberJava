Feature: Historical Reports Comparision

@Historical_Reports_001
Scenario: Historical Reports Comparision - Daily Reports
	Given URL in the browser
	Then Login page should displayed
	When I Enter "lisa@thepremierpride.com" in the User Email
	And I Enter "Encrypt1" in the User Password
	And I click on Login Button
	Then Home page should displayed	
	When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	And I delete on the existing "daily-time-report-6-21-2017" files in the temp folder
	When I click on Download Reports in the Timecards page
	And I select "Daily Time Report" in the Timecards page
	Then "Daily Time Report" popup should displayed
	When I select the Report Date as "June 21"; in "Daily Time Report" Popup
	When I click on Download button; in "Daily Time Report" popup	
	Then Daily Time Report should downloaded	
	Then "Daily Time" Historical Report data should Match
	Then I close the browser
		
		
@Historical_Reports_002
Scenario: Historical Reports Comparision - Timecard Summary Reports
	Given URL in the browser
	Then Login page should displayed
	When I Enter "lisa@thepremierpride.com" in the User Email
	And I Enter "Encrypt1" in the User Password
	And I click on Login Button
	Then Home page should displayed	
	When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	And I delete on the existing "timecard-summary-report_" files in the temp folder
	When I click on Download Reports in the Timecards page
	And I select "Timecard Summary Report" in the Timecards page
	Then "Timecard Summary Report" popup should displayed
	When I select the Report Date as "June 21"; in "Timecard Summary Report" Popup
	When I click on Download button; in "Timecard Summary Report" popup
	Then Timecard Summary Report should downloaded
	Then "Timecard Summary" Historical Report data should Match	
	Then I close the browser
	