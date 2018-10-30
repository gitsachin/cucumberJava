package com.findd.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.findd.drivers.ReusableMethods;

public class RecordsPage {

	String verifyRecordPageXpath="//div[.='All Records']";
	WebDriver driver;
	String firstLocationExceptionXpath="(//span[contains(@style,'255, 193, 7') and  @class='fa fa-location-arrow'])[1]";
	String firstBiometricExceptionXpath="(//span[contains(@style,'255, 193, 7') and  @class='fa fa-user'])[1]";
	public RecordsPage(WebDriver driver)
	{
		this.driver=driver;
	}
	
	public boolean verify_RecordsPage()
	{
		boolean result=false;
		if (driver.findElement(By.xpath(verifyRecordPageXpath)) != null)
		  result=true;
		return result;
	}
	
	public void clickOn_firstException() {
		ReusableMethods.waitByClickable(this.driver,firstLocationExceptionXpath,20);
		driver.findElement(By.xpath(firstLocationExceptionXpath)).click();
	}
	
	public void clickOn_firstBiometricException() {
		ReusableMethods.waitByClickable(this.driver,firstBiometricExceptionXpath,20);
		driver.findElement(By.xpath(firstBiometricExceptionXpath)).click();
	}
	
	
	
	public void clickOn_Exception(String exception) {
		
		String fullXpath="//*[@role='menuitem']//div[.='"+exception+"']";
		ReusableMethods.waitByClickable(this.driver,fullXpath,20);
		driver.findElement(By.xpath(fullXpath)).click();	
	}
	
	public boolean verify_Message(String Message)
	{
		String fullXpath="(//*[contains(.,'"+Message+"')])[1]";
		boolean result=false;
		if (driver.findElement(By.xpath(fullXpath)) != null)
		  result=true;
		return result;
	}
	
	public void clickOn_ButtonAction(String exception) {
		
		String fullXpath="//button[contains(.,'"+exception+"')]";
		ReusableMethods.waitByClickable(this.driver,fullXpath,20);
		driver.findElement(By.xpath(fullXpath)).click();	
	}
	
	
}
