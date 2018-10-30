package com.findd.pages;

import java.util.List;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementNotInteractableException;
import org.openqa.selenium.InvalidElementStateException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import com.findd.drivers.ReusableMethods;

public class Employee {
	
	String verifyEmployeePageXpath="//tr/th[.='First Name']";
	String addEmployeeXpath="//div[@class='fixed-add']/button";
	String firstNameXpath="//label[.='First Name']/following-sibling::input";
	String LastNameXpath="//label[.='Last Name']/following-sibling::input";
	String EmployeeIDXpath="//label[.='External ID']/following-sibling::input";
	String clockTxtXpath="//label[.='Clock Pin']/following-sibling::input";
	String addEmployeeXpath1="//span[.='ADD EMPLOYEE']/../..";
	String verifyAddEmployeePopupXpath="//h3[.='ADD EMPLOYEE']";
	String searchButtonXpath="//i[contains(@class, 'fa-search')]";
	String searchTxtXpath="//div[.='search']/following-sibling::input";
	String firstResultFNXpath="//*[@id='app']//table/tbody/tr/td[3]";
	String fistEmployeeCBXpath="(//input[@type='checkbox'])[1]";
	String fistEmployeeLnkpath="//*[@id='app']//td[3]";
	String deleteBtnXpath="//i[contains(@class,'fa-trash')]";
	String verifyDeletePopupXpath="//h3[.='DELETE EMPLOYEE']";
	String deleteBtnPopupXpath="//span[.='Delete']/../..";
	String noRecordFoundXpath="//td[.='0-0 of 0']";
	String employeeArrowDownXpath="(//div[@class='user-details']//i[contains(@class,'itemActionButton')])[1]";
	String statusActiveXPath="//label[.='Active']/../../input";
	String InactiveUsersLinkXPath="//span[@role='menuitem']//div[.='Inactive Users']";
	String activeUsersLinkXPath="//span[@role='menuitem']//div[.='Active Users']";
	String employeeArrowUpXpath="//i[contains(@class,'fa-chevron-up')]";
	String verifyAddPunchPopupXpath="//h3[contains(.,'ADD PUNCH - ')]";
	String hourXpath="//h3[contains(.,'ADD PUNCH - ')]/..//*[@id='hourField']";
	String minXpath="//h3[contains(.,'ADD PUNCH - ')]/..//*[@id='minuteField']";
	String periodXpath="//h3[contains(.,'ADD PUNCH - ')]/..//*[@id='ampmField']";
	String addPunchBtnXpath="//span[.='ADD PUNCH']/../..";
	String hour1Xpath="//*[@id='hourField']";
	String removeBtnXpath="(//i[@class='fa fa-remove'])[1]";
	String deletePunchBtnPopupXpath="//span[.='DELETE']/../..";
	String approveTimesheetBtnXpath = "//span[.='Approve']/../../..";
	String approveTimesheetPopupXpath = "//h3[contains(.,'Approve Selected Timecards')]";
	String approveTimesheetOkBtnXpath = "//h3[contains(.,'Approve Selected Timecards')]/..//span[.='OK']/../..";
	String approveMessageXpath = "//div[@class='timecard-locked-message']//div[contains(.,'Timecard approved and locked. Timecards cannot be changed once approved')]";
	String unlockBtnXpath="//span[.='Unlock']/../../..";
	String unlockPopupXpath="//h3[contains(.,'Unlock Timecard')]";
	String unlockOkXpath="//h3[contains(.,'Unlock Timecard')]/..//span[.='OK']/../..";	
	String punchLevelBtnXpath="//div[.='Punch Level']/following-sibling::div/span";
	String hierarchyItemPopupXpath="//h3[.='CHOOSE HIERARCHY ITEM']";
	String hierarchyItemOkbtnXpath="//h3[.='CHOOSE HIERARCHY ITEM']/..//span[.='OK']/../..";
	String ShowComponentTimecardsBtnXpath="//label[.='Show Component Timecards']/../..";
	String hierarchyItemAccountbtnXpath="//h3[.='CHOOSE HIERARCHY ITEM']/..//div[.='Account']/following-sibling::button";
	String defaultEmployeeLevelXpath="//*[.='Default Employee Level']/..//b[.='Account']";
	String selectAllBtnXpath="//input[@name='selectallcb']";
	String addDeviceBtnXpath="//button[contains(@style,'255, 179, 0')]";
	String deviceTabXpath="//button[.='Devices']";
	String recordsTabXpath="//button[.='Records']";
	String accountXpath="//a[contains(@href,'account')]";
	WebDriver driver;
	
	public Employee(WebDriver driver)
	{
		this.driver=driver;
	}
	public boolean verify_EmployeePage()
	{
		boolean result=false;
		ReusableMethods.wait(this.driver,verifyEmployeePageXpath,30);
		if (driver.findElement(By.xpath(verifyEmployeePageXpath)) != null)
		  result=true;
		
		return result;
	}
	
	public boolean verify_EmployeeDetailspage_notDisplayed()
	{
		boolean result=true;
	
		List<WebElement> elements=driver.findElements(By.xpath(deviceTabXpath));
		if (elements.size()>0)
		  result=false;
		return result;
	}
	
	public void AddEmployeeBtn()
	{
		driver.findElement(By.xpath(addEmployeeXpath)).click();
	}
	
	public boolean verify_addEmployeePopup() throws InterruptedException
	{
		boolean result=false;
		Thread.sleep(2000);
		ReusableMethods.wait(this.driver,verifyAddEmployeePopupXpath,30);
		if (driver.findElement(By.xpath(verifyAddEmployeePopupXpath)) != null)
		  result=true;
		return result;
	}
	
	public String setFirstName(String firstName) throws InterruptedException
	{
		Thread.sleep(5000);
		firstName=ReusableMethods.generateUniqueName(firstName);
		driver.findElement(By.xpath(firstNameXpath)).clear();
		driver.findElement(By.xpath(firstNameXpath)).sendKeys(firstName);
		return firstName;
	}
	
	public void setFirstName1(String firstName)
	{		
		driver.findElement(By.xpath(firstNameXpath)).clear();
		driver.findElement(By.xpath(firstNameXpath)).sendKeys(firstName);		
	}
	
	public void setLastName(String lastName)
	{
		driver.findElement(By.xpath(LastNameXpath)).clear();
		driver.findElement(By.xpath(LastNameXpath)).sendKeys(lastName);
	}
	
	public void setEmployeeID(String empID)
	{
		empID=ReusableMethods.generateUniqueName(empID);
		driver.findElement(By.xpath(EmployeeIDXpath)).clear();
		driver.findElement(By.xpath(EmployeeIDXpath)).sendKeys(empID);
	}
	
	public void setClockPin(String clockPin)
	{
		driver.findElement(By.xpath(clockTxtXpath)).clear();
		driver.findElement(By.xpath(clockTxtXpath)).sendKeys(clockPin);
	}
	
	public void AddEmployeeBtn_popup()
	{
		driver.findElement(By.xpath(addEmployeeXpath1)).click();
	}
	
	public void clickOnSearch() throws InterruptedException
	{
		Thread.sleep(10000);
		driver.findElement(By.xpath(searchButtonXpath)).click();
	}
	
	public void setSearchString(String firstName) throws InterruptedException
	{		
		Thread.sleep(2000);
		driver.findElement(By.xpath(searchTxtXpath)).clear();
		Thread.sleep(10000);
		driver.findElement(By.xpath(searchTxtXpath)).sendKeys(firstName);		
	}
	
	public boolean verifyEmployeeCreated(String firstName) throws InterruptedException
	{
		Thread.sleep(10000);
		boolean result=false;
		String actual=driver.findElement(By.xpath(firstResultFNXpath)).getText();
		if (firstName.trim().equalsIgnoreCase(actual.trim()))
			result=true;
		return result;
	}
	
	public String setSearchFirstItem() throws InterruptedException
	{
		//Thread.sleep(2000);
		String actual=driver.findElement(By.xpath(firstResultFNXpath)).getText();
		if(driver.findElement(By.xpath(searchButtonXpath)).isDisplayed())
				driver.findElement(By.xpath(searchButtonXpath)).click();
		ReusableMethods.wait(this.driver,searchTxtXpath,30);
		driver.findElement(By.xpath(searchTxtXpath)).clear();
		driver.findElement(By.xpath(searchTxtXpath)).sendKeys(actual);		
		return actual;
	}
	
	public void checkOnFirstEmployee()
	{
		driver.findElement(By.xpath(fistEmployeeCBXpath)).click();
	}
	
	public void clickOnFirstEmployee()
	{
		driver.findElement(By.xpath(fistEmployeeLnkpath)).click();
	}
	
	public void clickOnDeleteButton()
	{
		driver.findElement(By.xpath(deleteBtnXpath)).click();
	}
	
	public boolean verify_deleteEmployeePopup()
	{
		boolean result=false;
		ReusableMethods.wait(this.driver,verifyDeletePopupXpath,30);
		if (driver.findElement(By.xpath(verifyDeletePopupXpath)) != null)
		  result=true;
		return result;
	}
	
	public void clickOnDeletePopupButton()
	{
		driver.findElement(By.xpath(deleteBtnPopupXpath)).click();
	}
	
	public boolean verify_deleteSuccess() throws InterruptedException
	{
		boolean result=false;
		Thread.sleep(8000);
		if (driver.findElement(By.xpath(noRecordFoundXpath)) != null)
		  result=true;
		return result;
	}
	
	public void changeStatus(String status) throws InterruptedException
	{
		Thread.sleep(5000);
		ReusableMethods.wait(this.driver,employeeArrowDownXpath,30);
		driver.findElement(By.xpath(employeeArrowDownXpath)).click();
		Thread.sleep(2000);		
		driver.findElement(By.xpath(statusActiveXPath)).click();
		Thread.sleep(2000);
		//driver.findElement(By.xpath(employeeArrowUpXpath)).click();
	}
	
	public void clickOnInactive()
	{
		driver.findElement(By.xpath(InactiveUsersLinkXPath)).click();
	}
	
	public void clickOnActive()
	{
		driver.findElement(By.xpath(activeUsersLinkXPath)).click();
	}
	
	public void clickOnAdd(String day) throws InterruptedException{
		Thread.sleep(1000);
		String fullXpath="(//*[@id='fullTimeField'])["+getDayNumber(day)+"]";
		ReusableMethods.wait(this.driver,fullXpath,10);
		driver.findElement(By.xpath(fullXpath)).click();
		
	}

	
	public boolean verify_AddPunchPopup() throws InterruptedException
	{
		boolean result=false;
		Thread.sleep(1000);
		ReusableMethods.wait(this.driver,verifyAddPunchPopupXpath,30);
		if (driver.findElement(By.xpath(verifyAddPunchPopupXpath)) != null)
		  result=true;	
		return result;		
	}
	

	public void setTime(String Hour, String Min, String Period) throws InterruptedException
	{
		Thread.sleep(5000);
		driver.findElement(By.xpath(hourXpath)).sendKeys(Hour);
		driver.findElement(By.xpath(minXpath)).sendKeys(Min);
		driver.findElement(By.xpath(periodXpath)).sendKeys(Period);			
	}

	
	public void clickOn_AddPunch() throws InterruptedException
	{
		Thread.sleep(1000);
		driver.findElement(By.xpath(addPunchBtnXpath)).click();
		Thread.sleep(3000);
	}
	
	public boolean verify_timeAdded(String time,String day,String type) throws InterruptedException
	{
		Thread.sleep(2000);
		String fullXpath="//td["+getDayNumber(day)+"]//span[.='"+type+"']/..//i[contains(@title,'"+time+"')]";				
		boolean result=false;
		ReusableMethods.wait(this.driver,fullXpath,30);
		if (driver.findElement(By.xpath(fullXpath)) != null)
		  result=true;
		return result;
	}
	
	public void clickOn_PunchLevel() throws InterruptedException
	{
		Thread.sleep(3000);
		driver.findElement(By.xpath(punchLevelBtnXpath)).click();
	}
	

	public boolean verify_HierarchyItemPopup()
	{
		boolean result=false;
		ReusableMethods.wait(this.driver,hierarchyItemPopupXpath,30);
		if (driver.findElement(By.xpath(hierarchyItemPopupXpath)) != null)
		  result=true;
		return result;
	}	
	
	public void choose_Hierarchy(String level) throws InterruptedException
	{		
		Thread.sleep(1000);
		driver.findElement(By.xpath(hierarchyItemAccountbtnXpath)).click();
		Thread.sleep(1000);
		String fullXpath="//h3[.='CHOOSE HIERARCHY ITEM']/..//td[.='"+level+"']";
		driver.findElement(By.xpath(fullXpath)).click();
	}
	
	public void clickOn_hierarchyItemOkbtn() throws InterruptedException
	{
		Thread.sleep(3000);
		driver.findElement(By.xpath(hierarchyItemOkbtnXpath)).click();
		Thread.sleep(2000);
	}
	
	
	public boolean verify_ComponentTimeAdded(String time,String day,String type,String item)
	{
		String fullXpath="//b[.='"+item+"']/..//td["+getDayNumber(day)+"]//span[.='"+type+"']/..//i[contains(@title,'"+time+"')]";				
		boolean result=false;
		ReusableMethods.wait(this.driver,fullXpath,30);
		if (driver.findElement(By.xpath(fullXpath)) != null)
		  result=true;
		return result;
	}
	

	public void clickOn_ShowComponentTimecardsbtn() throws InterruptedException
	{
		Thread.sleep(5000);
		driver.findElement(By.xpath(ShowComponentTimecardsBtnXpath)).click();
	}
	
	public void deleteTime_entryAll() throws InterruptedException
	{
		Thread.sleep(5000);
		List<WebElement> array=driver.findElements(By.xpath(hour1Xpath));
		int count=array.size();
		System.err.println("The count :" + count);
		for(int i=0;i<count;i++)
		{
			ReusableMethods.wait(this.driver,hour1Xpath,5);
			Thread.sleep(2000);
			driver.findElement(By.xpath(hour1Xpath)).click();
			Actions builder = new Actions(driver);
			builder.moveToElement(driver.findElement(By.xpath(hour1Xpath))).perform();
			//driver.findElement(By.xpath(hour1Xpath)).click();
			//Thread.sleep(2000);
			driver.findElement(By.xpath(removeBtnXpath)).click();	
			Thread.sleep(2000);
			driver.findElement(By.xpath(deletePunchBtnPopupXpath)).click();		
			Thread.sleep(3000);
		}
	}

	public void deleteTime_entry() throws InterruptedException
	{
		String hour1Xpath ="(//i[@class='fa fa-info-circle'])[1]";
		Thread.sleep(5000);
			ReusableMethods.wait(this.driver,hour1Xpath,5);
			//driver.findElement(By.xpath(hour1Xpath)).click();
			Actions builder = new Actions(driver);
			builder.moveToElement(driver.findElement(By.xpath(hour1Xpath))).perform();
			//builder.moveToElement(driver.findElement(By.xpath(hour1Xpath))).perform();
			Thread.sleep(1000);
			driver.findElement(By.xpath(removeBtnXpath)).click();	
			Thread.sleep(2000);	
			driver.findElement(By.xpath(deletePunchBtnPopupXpath)).click();		
			Thread.sleep(3000);
		
	}

	public boolean verify_AllTimeEntryDeleted()
	{
		boolean result=false;
		List<WebElement> array=driver.findElements(By.xpath(hour1Xpath));
		if (array.size()== 0)
		  result=true;
		return result;
	}
	
	public boolean verify_ApproveTimesheetPopup()
	{
		boolean result=false;
		ReusableMethods.wait(this.driver,approveTimesheetPopupXpath,30);
		if (driver.findElement(By.xpath(approveTimesheetPopupXpath)) != null)
		  result=true;
		return result;
	}
	
	
	public boolean verify_ApproveMessage()
	{			
		boolean result=false;
		ReusableMethods.wait(this.driver,approveMessageXpath,30);
		if (driver.findElement(By.xpath(approveMessageXpath)) != null)
		  result=true;
		return result;
	}
	
	public void clickOn_ApproveTimesheet() throws InterruptedException
	{
		ReusableMethods.wait(this.driver,approveTimesheetBtnXpath,5);
		driver.findElement(By.xpath(approveTimesheetBtnXpath)).click();
	}
	
	public void clickOn_ApproveTimesheetOK() throws InterruptedException
	{
		ReusableMethods.wait(this.driver,approveTimesheetOkBtnXpath,5);
		driver.findElement(By.xpath(approveTimesheetOkBtnXpath)).click();
	}
		
	public void clickOn_UnlockTimecard() throws InterruptedException
	{
		ReusableMethods.wait(this.driver,unlockBtnXpath,20);
		driver.findElement(By.xpath(unlockBtnXpath)).click();
	}
	
	public void clickOn_DefaultEmployeeLevel() throws InterruptedException
	{
		ReusableMethods.wait(this.driver,defaultEmployeeLevelXpath,20);
		driver.findElement(By.xpath(defaultEmployeeLevelXpath)).click();
	}
	
	
	public void clickOn_UnlockTimecardOK() throws InterruptedException
	{
		ReusableMethods.wait(this.driver,unlockOkXpath,20);
		driver.findElement(By.xpath(unlockOkXpath)).click();
	}
	
	public void clickOn_DeviceTab() throws InterruptedException
	{
		ReusableMethods.wait(this.driver,deviceTabXpath,20);
		driver.findElement(By.xpath(deviceTabXpath)).click();
	}
	
	public void clickOn_RecordsTab() throws InterruptedException
	{
		ReusableMethods.wait(this.driver,recordsTabXpath,20);
		driver.findElement(By.xpath(recordsTabXpath)).click();
	}

	public boolean verify_UnlockTimecardPopup()
	{
		boolean result=false;
		ReusableMethods.wait(this.driver,unlockPopupXpath,20);
		if (driver.findElement(By.xpath(unlockPopupXpath)) != null)
		  result=true;
		return result;
	}
	
	public boolean verify_DefaultLevel(String level,String time)
	{
		boolean result=false;
		String fullXpath="//*[@class='user-detail-tab']//b[.='"+level+"']/..//i[contains(@title,'"+time+"')]";
		ReusableMethods.wait(this.driver,fullXpath,20);
		if (driver.findElement(By.xpath(fullXpath)) != null)
		  result=true;
		return result;
	}
	
	
	public boolean verify_UnlockTimeCardSuccess()
	{			
		boolean result=false;
		ReusableMethods.wait(this.driver,approveTimesheetBtnXpath,20);
		if (driver.findElement(By.xpath(approveTimesheetBtnXpath)) != null)
		  result=true;
		return result;
	}
	
	public String getTimecardDate(String day)	
	{
		String date="";
		String fullXpath="//div[.='"+ day +"']/following-sibling::div";
		date=driver.findElement(By.xpath(fullXpath)).getText();
		System.out.println("The Selected Date : " + date);
		return date;
	}
	
	public int getDayNumber(String day)
	{
		int value;
		switch(day)
		{
		case "Monday":
			value=1; break;
		case "Tuesday":
			value=2; break;
		case "Wednesday":
			value=3; break;
		case "Thursday":
			value=4; break;
		case "Friday":
			value=5; break;
		case "Saturday":
			value=6; break;
		case "Sunday":
			value=7; break;
		case "Total":
			value=8; break;
			default:
				value=-1;
		}
		return value;
	}	
	
	public boolean checkFor_ElementNotInteractable(String field) throws InterruptedException	
	{	
		boolean result=false;
		String fullXpath=null;
		if(field.equalsIgnoreCase("Add Employee Button"))
		{
			fullXpath=addEmployeeXpath;
		}
		else if(field.equalsIgnoreCase("Delete Employee Button"))
		{	
			fullXpath=deleteBtnXpath;
		}
		else if(field.equalsIgnoreCase("Add Button"))
		{			
			fullXpath="(//label[contains(.,'+ ADD')])[1]";
		}
		else if(field.equalsIgnoreCase("Status Change"))
		{	
			Thread.sleep(5000);
			ReusableMethods.wait(this.driver,employeeArrowDownXpath,30);
			driver.findElement(By.xpath(employeeArrowDownXpath)).click();
			Thread.sleep(500);	
			fullXpath=statusActiveXPath;
			result =true;
		}
		
		try
		{
			if(fullXpath!=null)
			driver.findElement(By.xpath(fullXpath)).click();
		}
		catch (ElementNotInteractableException e)
		{
			result =true;
		}
		catch (InvalidElementStateException e){
			result =true;
		}
		catch (Exception e){
			result =true;
		}
		return result;
	}
	
	
	public boolean checkNot_displayed(String field) throws InterruptedException	
	{
		boolean result=false;
		
		String fullXpath=null;
		if(field.equalsIgnoreCase("Add Employee Popup"))
		{
			fullXpath=verifyAddEmployeePopupXpath;
		}
		else if(field.equalsIgnoreCase("Add Button"))
		{			
			Thread.sleep(2000);
			fullXpath="(//label[contains(.,'+ ADD')])[1]";
		}
		else if(field.equalsIgnoreCase("Add Punch Popup"))
		{
			fullXpath=verifyAddPunchPopupXpath;
		}
		
		else if(field.equalsIgnoreCase("Approve Timecard Button"))
		{
			fullXpath=approveTimesheetBtnXpath;
		}
	
		else if(field.equalsIgnoreCase("Unlock Timecard Button"))
		{
			fullXpath=unlockBtnXpath;
		}
		else if(field.equalsIgnoreCase("Status"))
		{
			fullXpath=unlockBtnXpath;
		}
		else if(field.equalsIgnoreCase("Add Device Button"))
		{
			fullXpath=addDeviceBtnXpath;
		}
		else if(field.equalsIgnoreCase("Status Change"))
		{	
			Thread.sleep(5000);
			ReusableMethods.wait(this.driver,employeeArrowDownXpath,30);
			driver.findElement(By.xpath(employeeArrowDownXpath)).click();
			Thread.sleep(500);	
			fullXpath=statusActiveXPath;
		}
		else if(field.equalsIgnoreCase("Delete Employee Button"))
		{	
			fullXpath=deleteBtnXpath;
		}	
		else if(field.equalsIgnoreCase("Delete Timecard Button"))
		{
			fullXpath=hour1Xpath;
		}
		else if(field.equalsIgnoreCase("Add Punch popup"))
		{
			fullXpath=verifyAddPunchPopupXpath;
		}	
		else if(field.equalsIgnoreCase("Account Menu"))
		{
			fullXpath=accountXpath;
		}	
		
		//button//span[.='Approve']
		
		
		List<WebElement> list =driver.findElements(By.xpath(fullXpath));
		if(list.size()==0)
			result=true;
		return result;
	}
	
	
	public boolean verify_dailyTime(String field, String Expected,String day,String Hierarchy) throws InterruptedException{
		boolean result=false;
		int dayNo=getDayNumber(day);
		String fullXpath = null;
		if(field.equalsIgnoreCase("Total"))
			fullXpath="(//b[.='"+Hierarchy+"']/..//td[.='Total:'])["+dayNo+"]/following-sibling::td";
		else if(field.equalsIgnoreCase("Reg"))
			fullXpath="(//b[.='"+Hierarchy+"']/..//td[.='Reg:'])["+dayNo+"]/following-sibling::td";
		else if(field.equalsIgnoreCase("OT1"))
			fullXpath="(//b[.='"+Hierarchy+"']/..//td[.='OT1:'])["+dayNo+"]/following-sibling::td";		
		Thread.sleep(1000);
		String Actual=	driver.findElement(By.xpath(fullXpath)).getText();
		result=ReusableMethods.compare(Expected, Actual);		
		return result;
	}
	
	public void clickOn_selectAll()
	{
		driver.findElement(By.xpath(selectAllBtnXpath)).click();
	}
	
	public int getEmployeeCount()
	{
		String value=driver.findElement(By.xpath("//tfoot/tr/td[3]")).getText();
		String[] s1=value.split("of ",0);
		return Integer.valueOf(s1[1]);		
	}
	
	public void clickOn_buttonByName(String button)
	{
		String fullXpath="//button[.='"+button+"']";
		ReusableMethods.waitByClickable(this.driver,fullXpath,10);
		driver.findElement(By.xpath(fullXpath)).click();
		
	}
	
	public boolean verify_present(String value)
	{
		boolean result=false;		
		String fullXpath = "//*[.='"+value+"']";
		ReusableMethods.wait(this.driver,fullXpath,10);
		
		List<WebElement> list =driver.findElements(By.xpath(fullXpath));
		if(list.size()>0)
			result=true;
		return result;
	}
}
