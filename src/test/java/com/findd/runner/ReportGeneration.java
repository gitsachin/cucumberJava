package com.findd.runner;

import com.github.mkolisnyk.cucumber.reporting.CucumberResultsOverview;

public class ReportGeneration {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		CucumberResultsOverview results = new CucumberResultsOverview();
		results.setOutputDirectory("target");
		results.setOutputName("cucumber-results");
		results.setSourceFile("target/cucumber.json");
		results.executeFeaturesOverviewReport();

	}

}
