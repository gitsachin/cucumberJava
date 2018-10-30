package com.findd.runner.dev;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(strict = false, features = "datafile/Regression/", glue = "com.findd.steps", format = { "pretty",
        "html:target/dev/cucumber-pretty",
        "json:target/dev/cucumber.json"}
		, tags = { "@Dev"} //To exclude dev
)


public class RunDevTest {

} 