package com.findd.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileReader;
import java.io.IOException;

import com.findd.drivers.ReusableMethods;

public class FileOperations {

	public String readCSVfileByColumn(String csvFile,String field,int column)
	{
		String value=null;
        String line = "";
        String cvsSplitBy = ",";

        try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {
            while ((line = br.readLine()) != null) {
            	String[] datas = line.split(cvsSplitBy);
            	
            	for(int i=0;i<datas.length;i++)
            	{            		
               	if(datas[i].contains(field)){
            		value=datas[column];
            	}
            	}
            }

        } catch (IOException e) {
            e.printStackTrace();
        }	         
        return value;
	}

	public String getDate_CSVfile_TimeSummary(String csvFile,String field,int column,String Hierarchy)
	{
		
		String value=null;
        String line = "";
        String cvsSplitBy = ",";

        try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {
            while ((line = br.readLine()) != null) {
            	String[] datas = line.split(cvsSplitBy);
            	
            	for(int i=0;i<datas.length;i++)
            	{
            	   	if(datas[i].contains(field) && datas[3].equalsIgnoreCase(Hierarchy)){
            	   		System.out.println("Expected Hierarchy : " + Hierarchy + "--- Actual Hierarchy : " + datas[3]);
	            		value=datas[column];
	            	}	            	
            	}
            }

        } catch (IOException e) {
            e.printStackTrace();
        }	         
        return value;
	}
	public String getFileByPartialName(final String PartialName)
	{
		String downloadPath = System.getProperty("user.dir") + "\\temp\\";
		File dir = new File(downloadPath);
		File[] files =  dir.listFiles(new FileFilter() {			
		    @Override
		    public boolean accept(File file) {		   
		        return file.getName().startsWith(PartialName);
		    }
		});	 	
		return downloadPath+files[0].getName();
	}
	
	public void fileDeleteByPartialName(final String PartialName){
		String downloadPath = System.getProperty("user.dir") + "\\temp\\";
		File dir = new File(downloadPath);
		File[] files =  dir.listFiles(new FileFilter() {			
		    @Override
		    public boolean accept(File file) {		   
		        return file.getName().startsWith(PartialName);
		    }
		});
		
		for(int i=0;i<files.length;i++){
			try{

	    		File file = new File( downloadPath+files[i].getName());
	    		if(file.delete()){
	    			System.out.println(file.getName() + " is deleted!");
	    		}else{
	    			System.out.println("Delete operation is failed.");
	    		}
	    	}catch(Exception e){
	    		e.printStackTrace();
	    	}	
		}
	}
	
	public boolean fileExistByPartialName(final String PartialName) throws InterruptedException{
		Thread.sleep(10000);
		String downloadPath = System.getProperty("user.dir") + "\\temp\\";
		File dir = new File(downloadPath);
		File[] files =  dir.listFiles(new FileFilter() {			
		    @Override
		    public boolean accept(File file) {		   
		        return file.getName().startsWith(PartialName);
		    }
		});
		return (files.length>0);
	}
	
	public boolean readCSVandCompareColumn(String csvFile,String field,int column,String Expected)
	{
		String line = "";
        String cvsSplitBy = ",";
        boolean result=false;
        try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {
        	  while ((line = br.readLine()) != null && result==false) {
            	String[] datas = line.split(cvsSplitBy);
            	for(int i=0;i<datas.length;i++)
            	{            		
            		
               	if(datas[i].contains(field)){
               		{
            		String actualString=datas[column];
            		result=ReusableMethods.compare(Expected, actualString);            	
               		}
            	}
            	}
            }

        } catch (IOException e) {
            e.printStackTrace();
        }	         
        return result;
	}

}

