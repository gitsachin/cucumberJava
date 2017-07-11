package com.findd.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.findd.drivers.ReusableMethods;

public class Employee {
	
	String verifyEmployeePageXpath="//tr/th[.='First Name']";
	String addEmployeeXpath="(//button)[1]";
	String firstNameXpath="//label[.='First Name']/following-sibling::input";
	String LastNameXpath="//label[.='Last Name']/following-sibling::input";
	String EmployeeIDXpath="//label[.='Employee ID']/following-sibling::input";
	String addEmployeeXpath1="//span[.='ADD EMPLOYEE']/../..";
	String verifyAddEmployeePopupXpath="//h3[.='ADD EMPLOYEE']";
	String searchButtonXpath="//i[contains(@class, 'fa-search')]";
	String searchTxtXpath="//div[.='search']/following-sibling::input";
	String firstResultFNXpath="//*[@id='app']//table/tbody/tr/td[3]";
	String fistEmployeeCBXpath="(//input[@type='checkbox'])[1]";
	String deleteBtnXpath="//i[contains(@class,'fa-trash')]";
	String verifyDeletePopupXpath="//h3[.='DELETE EMPLOYEE']";
	String deleteBtnPopupXpath="//span[.='Delete']/../..";
	String noRecordFoundXpath="//td[.='0-0 of 0']";
	
	WebDriver driver;
	public Employee(WebDriver driver)
	{
		this.driver=driver;
	}
	public boolean verify_EmployeePage()
	{
		boolean result=false;
		ReusableMethods.wait(this.driver,verifyEmployeePageXpath,20);
		if (driver.findElement(By.xpath(verifyEmployeePageXpath)) != null)
		  result=true;
		return result;
	}
	
	public void AddEmployeeBtn()
	{
		driver.findElement(By.xpath(addEmployeeXpath)).click();
	}
	
	public boolean verify_addEmployeePopup()
	{
		boolean result=false;
		ReusableMethods.wait(this.driver,verifyAddEmployeePopupXpath,20);
		if (driver.findElement(By.xpath(verifyAddEmployeePopupXpath)) != null)
		  result=true;
		return result;
	}
	
	public String setFirstName(String firstName)
	{
		firstName=ReusableMethods.generateUniqueName(firstName);
		driver.findElement(By.xpath(firstNameXpath)).clear();
		driver.findElement(By.xpath(firstNameXpath)).sendKeys(firstName);
		return firstName;
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
	
	public void AddEmployeeBtn_popup()
	{
		driver.findElement(By.xpath(addEmployeeXpath1)).click();
	}
	
	public void clickOnSearch() throws InterruptedException
	{
		Thread.sleep(10000);
		driver.findElement(By.xpath(searchButtonXpath)).click();
	}
	
	public void setSearchString(String firstName)
	{		
		driver.findElement(By.xpath(searchTxtXpath)).clear();
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
	
	public String setSearchFirstItem()
	{
		String actual=driver.findElement(By.xpath(firstResultFNXpath)).getText();
		driver.findElement(By.xpath(searchButtonXpath)).click();
		driver.findElement(By.xpath(searchTxtXpath)).clear();
		driver.findElement(By.xpath(searchTxtXpath)).sendKeys(actual);		
		return actual;
	}
	
	public void checkOnFirstEmployee()
	{
		driver.findElement(By.xpath(fistEmployeeCBXpath)).click();
	}
	public void clickOnDeleteButton()
	{
		driver.findElement(By.xpath(deleteBtnXpath)).click();
	}
	
	public boolean verify_deleteEmployeePopup()
	{
		boolean result=false;
		ReusableMethods.wait(this.driver,verifyDeletePopupXpath,20);
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
		Thread.sleep(5000);
		if (driver.findElement(By.xpath(noRecordFoundXpath)) != null)
		  result=true;
		return result;
	}
	
}
