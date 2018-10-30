package com.findd.drivers;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class ReusableMethods {

	public static void wait(WebDriver driver, String Xpath, int secs)
	{		
		WebDriverWait wait = new WebDriverWait(driver, secs);
		wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath(Xpath)));
	}
	public static void waitByClickable(WebDriver driver, String Xpath, int secs)
	{		
		WebDriverWait wait = new WebDriverWait(driver, secs);
		wait.until(ExpectedConditions.elementToBeClickable(By.xpath(Xpath)));
	}
	
	public static String generateUniqueName(String name)
	{
		 Date dNow = new Date();
	     SimpleDateFormat ft = new SimpleDateFormat("yyMMddhhmmssMs");
	     String datetime = ft.format(dNow);
	     return name+datetime;	
	}
	
	public static boolean compare(String Expected, String Actual){
		boolean result=false;
		System.out.println("Expected String : " + Expected + " - Actual String : " + Actual);
		if(Expected.equalsIgnoreCase(Actual))
			result=true;
		return result;
	}
	
	public static boolean checkCountEqual(int Expected, int Actual){
		boolean result=false;
		System.out.println("Expected String : " + Expected + " - Actual String : " + Actual);
		if(Expected==Actual)
			result=true;
		return result;
		
	}
	
	@SuppressWarnings("null")
	public static boolean columnCompare(WebDriver driver,String column)
	{
		boolean result=true;
		String[] expCol=column.split("~");
		List<WebElement> elements=driver.findElements(By.xpath("//th[.!='']"));
		System.out.println("The Column Size is" + elements.size());
		for(int i=1;i<=elements.size();i++)
		{
			String actual=driver.findElement(By.xpath("(//th[.!=''])["+i+"]")).getText();
			result=compare(expCol[i-1], actual);
			if (result==false)
				break;
		}
				return result;
	}
	
	@SuppressWarnings("null")
	public static boolean columnCompare(WebDriver driver,String column,String startingXpath)
	{
		boolean result=true;
		String[] expCol=column.split("~");
		List<WebElement> elements=driver.findElements(By.xpath(startingXpath+"//th[.!='']"));
		System.out.println("The Column Size is " + elements.size());
		for(int i=1;i<=elements.size();i++)
		{
			String actual=driver.findElement(By.xpath("("+startingXpath+"//th[.!=''])["+i+"]")).getText();
			result=compare(expCol[i-1], actual);
			if (result==false)
				break;
		}
				return result;
	}
	
	public static void Refresh(WebDriver driver)
	{
		driver.navigate().refresh();

	}
}
