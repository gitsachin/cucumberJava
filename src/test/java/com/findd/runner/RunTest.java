package com.findd.runner;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(strict = false, features = "datafile\\Regression\\Refresh.feature", glue = "com.findd.steps", format = { "pretty",
        "html:target/site/cucumber-pretty",
        "json:target/cucumber.json"}
		, tags = { "~@Dev",} //To exclude dev
)


public class RunTest {

} 