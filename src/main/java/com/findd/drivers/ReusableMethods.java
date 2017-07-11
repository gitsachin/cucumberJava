package com.findd.drivers;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class ReusableMethods {

	public static void wait(WebDriver driver, String Xpath, int secs)
	{		
		WebDriverWait wait = new WebDriverWait(driver, secs);
		wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath(Xpath)));
	}
	
	public static String generateUniqueName(String name)
	{
		 Date dNow = new Date();
	     SimpleDateFormat ft = new SimpleDateFormat("yyMMddhhmmssMs");
	     String datetime = ft.format(dNow);
	     return name+datetime;	
	}
}
