package com.findd.runner;

import org.junit.After;
import org.junit.Test;
import org.junit.runner.JUnitCore;

import com.findd.drivers.SendMailSSL;
import com.github.mkolisnyk.cucumber.reporting.CucumberResultsOverview;

public class MainTest {
	
	@Test
	public void run()
	{
		JUnitCore junit = new JUnitCore();
		junit.run(RunTest.class);
	}
	@After
	public void teardown() throws Exception
	{
		CucumberResultsOverview results = new CucumberResultsOverview();
		SendMailSSL  mailSSL = new SendMailSSL();
		results.setOutputDirectory("target");
		results.setOutputName("cucumber-results");
		results.setSourceFile("target/cucumber.json");
		results.executeFeaturesOverviewReport();
		mailSSL.sendMail();
	}
}
