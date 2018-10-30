package com.findd.runner.dev;

import org.junit.After;
import org.junit.Test;
import org.junit.runner.JUnitCore;

import com.findd.utils.SendMailSSLDev;
import com.github.mkolisnyk.cucumber.reporting.CucumberResultsOverview;

public class MainDevTest {
	
	@Test
	public void run()
	{
		JUnitCore junit = new JUnitCore();
		junit.run(RunDevTest.class);
	}
	@After
	public void teardown() throws Exception
	{
		CucumberResultsOverview results = new CucumberResultsOverview();
		SendMailSSLDev  mailSSL = new SendMailSSLDev();
		results.setOutputDirectory("target");
		results.setOutputName("cucumber-results");
		results.setSourceFile("target/dev/cucumber.json");
		results.executeFeaturesOverviewReport();
		mailSSL.subject="Findd - Dev Env Smoke - Automation Test Report";
		mailSSL.sendMail();
	}
	
}
