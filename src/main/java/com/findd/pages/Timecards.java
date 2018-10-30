package com.findd.pages;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.findd.drivers.ReusableMethods;
import com.findd.steps.Employee_steps;
import com.findd.utils.FileOperations;

public class Timecards {

	String verifyTimecardsPageXpath="//div[.='All Timecards']";
	String downloadReportXpath="//span[.='Reports']/../../..";
	String TCSummaryReportPopupXpath="//h3[.='Timecard Summary Report']";
	String downloadXpath="//span[.='Download']";
	String okDateBtnXpath="//div[.='OK']//..";
	String dateInputXpath="//input[contains(@id,'undefined-undefined-ReportDate')]";
	String downloadPayrollFileXpath="//span[.='Download Payroll File']/../../..";
	String fistCBXpath="(//input[@type='checkbox'])[2]";
	//String approveBtnXpath="//div//span[.='Approve']/../..";
    String approveBtnXpath="//span[.='Approve']/../../../..//button[contains(@style, 'visibility: visible')]";
    String hour1Xpath="//*[@id='hourField']";
    WebDriver driver;
	
	public Timecards(WebDriver driver)
	{
		this.driver=driver;
	}
	public boolean verify_TimecardsPage()
	{
		boolean result=false;
		ReusableMethods.wait(this.driver,verifyTimecardsPageXpath,30);
		if (driver.findElement(By.xpath(verifyTimecardsPageXpath)) != null)
		  result=true;
		return result;
	}
	
	public void clickOn_ByNameValue(String button)
	{
		String fullXpath="(//*[.='"+button+"'])[1]";
		driver.findElement(By.xpath(fullXpath)).click();
		
	}
	
	public void checkOnFirstCheckbox()
	{
		ReusableMethods.waitByClickable(this.driver,fistCBXpath,30);
		driver.findElement(By.xpath(fistCBXpath)).click();
	}
	
	public void checkOn_button(String button)
	{
		String fullXpath=null;
		if(button.equalsIgnoreCase("Approve"))
			fullXpath=approveBtnXpath;
		else if(button.equalsIgnoreCase("Cancel"))
			fullXpath="//button[.='Cancel']";
		else if(button.equalsIgnoreCase("First No Missing Punch Checkbox"))
			fullXpath="(//td[.='0']/../../../../../../..//div)[1]";
		else if(button.equalsIgnoreCase("First Missing Punch Checkbox"))
			fullXpath="(//td[6][not(contains(.,'0'))]/../../../../../../..//div)[1]";
		else if(button.equalsIgnoreCase("First Name"))
			fullXpath="(//table/tbody/tr/td[3])[2]";	
		
		ReusableMethods.waitByClickable(this.driver,fullXpath,30);
		driver.findElement(By.xpath(fullXpath)).click();
	}
	
	public void clickOn_DownloadReport() throws InterruptedException
	{
		Thread.sleep(10000);
		ReusableMethods.wait(this.driver,downloadReportXpath,20);
		driver.findElement(By.xpath(downloadReportXpath)).click();
	}
	
	public void select_Report(String report) throws InterruptedException
	{
		Thread.sleep(1000);
		String fullXpath="//div[.='"+report+"']";
		driver.findElement(By.xpath(fullXpath)).click();		
	}
	
	public boolean verify_TimecardSummaryReportPopup(String report)
	{
		String TCSummaryReportPopupXpath="//h3[.='"+report+"']";
		boolean result=false;
		ReusableMethods.wait(this.driver,TCSummaryReportPopupXpath,30);
		if (driver.findElement(By.xpath(TCSummaryReportPopupXpath)) != null)
		  result=true;
		return result;
	}
	
	public void clickOn_Download()
	{
		ReusableMethods.wait(this.driver,downloadXpath,30);
		driver.findElement(By.xpath(downloadXpath)).click();
	}
	
	public void clickOn_DownloadPayrollFile()
	{
		ReusableMethods.wait(this.driver,downloadPayrollFileXpath,30);
		driver.findElement(By.xpath(downloadPayrollFileXpath)).click();
	}
	
	public boolean verify_DataInTimeSummaryReport(String column,String Expected,String Hierarchy)
	{
		boolean result=false;
		int index = 0;
		FileOperations fo=new FileOperations();
		switch(column)
		{
		case "Day 1":
			index=10; break;
		case "Day 2":
			index=11; break;
		case "Day 3":
			index=12; break;
		case "Day 4":
			index=13; break;
		case "Day 5":
			index=14; break;
		case "Day 6":
			index=15; break;
		case "Day 7":
			index=16; break;
		case "Reg Hours":
			index=17; break;
		case "OT Hours":
			index=18; break;
		}
		if(Hierarchy.equalsIgnoreCase("Default"))
			Hierarchy="";
		String t=fo.getFileByPartialName("timecard-summary-report_");
		String recentlyCreated=Employee_steps.recentlyCreated;
		String actualString=fo.getDate_CSVfile_TimeSummary(t, recentlyCreated, index,Hierarchy);
		result=ReusableMethods.compare(Expected, actualString);
		return result;		
	}
	
	public void selectDatebyMD(String date) throws InterruptedException
	{
		String splitDate[]= date.split(" ");
		String month=splitDate[0];
		date=splitDate[1];
		System.out.println("The Split Month : "+ month);
		System.out.println("The Split Date : "+ date);
		if(date.equals("01"))
			date="1";
		else if(date.equals("02"))
			date="2";
		else if(date.equals("03"))
			date="3";
		else if(date.equals("04"))
			date="4";
		else if(date.equals("05"))
			date="5";
		else if(date.equals("06"))
			date="6";
		else if(date.equals("07"))
			date="7";
		else if(date.equals("08"))
			date="8";
		else if(date.equals("09"))
			date="9";

		driver.findElement(By.xpath(dateInputXpath)).click();
		String monthXpath="//div[@direction='up']/div[contains(.,'"+month+"')]";
		if(driver.findElements(By.xpath(monthXpath)).size() == 0)
		{
			driver.findElement(By.xpath("(//div[contains(@style,'space-between; flex-direction')]//button)[1]")).click();
			Thread.sleep(2000);
		}		
		String datXpath="//span[.='"+date+"']/..";			
		driver.findElement(By.xpath(datXpath)).click();
		driver.findElement(By.xpath(okDateBtnXpath)).click();
		Thread.sleep(5000);
	}
	
	public boolean verify_DataInDailyTimeReport(String column,String Expected)
	{
		boolean result=false;
		int index = 0;
		FileOperations fo=new FileOperations();
		switch(column)
		{
		case "Clock In":
			index=8; break;
		case "Clock Out":
			index=9; break;
		case "Hours Worked":
			index=10; break;
		case "Total Hours":
			index=13; break;

		}
		String t=fo.getFileByPartialName("daily-time-report-");
		String recentlyCreated=Employee_steps.recentlyCreated;
		result=fo.readCSVandCompareColumn(t, recentlyCreated, index,Expected);	
		return result;		
	}
	
	public boolean verify_PayrollFile(String column,String Expected)
	{
		boolean result=false;
		int index = 0;
		FileOperations fo=new FileOperations();
		switch(column)
		{
		case "Reg":
			index=5; break;
		case "OT":
			index=6; break;		
		}
		String t=fo.getFileByPartialName("Automated_Testing-");
		String recentlyCreated=Employee_steps.recentlyCreated;
		result=fo.readCSVandCompareColumn(t, recentlyCreated, index,Expected);	
		return result;		
	}
	
	public void clickOnAdd() throws InterruptedException{
		Thread.sleep(1000);
		String fullXpath="(//div[.='+ ADD'])[1]";
		ReusableMethods.wait(this.driver,fullXpath,10);
		driver.findElement(By.xpath(fullXpath)).click();
		
	}

	public boolean checkNot_displayed(String field) throws InterruptedException	
	{
		boolean result=false;
		
		String fullXpath=null;
		if(field.equalsIgnoreCase("Approve Button"))
		{
			fullXpath=approveBtnXpath;
		}	
		else if(field.equalsIgnoreCase("Add Button"))
		{
			fullXpath="(//div[.='+ ADD'])[1]";
		}	
		else if(field.equalsIgnoreCase("Edit Option"))
		{
			fullXpath=hour1Xpath;
		}	
		else if(field.equalsIgnoreCase("Remove Icon"))
		{
			fullXpath=hour1Xpath;
		}	
		
		
		
		List<WebElement> list =driver.findElements(By.xpath(fullXpath));
		if(list.size()==0)
			result=true;
		return result;
	}
	
}
