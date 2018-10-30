package com.findd.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;


public class ExcelCompare_SendMail {
	
	
	public boolean compareSend(String filename1,String filename2,String Subject ) throws IOException
	{
		String downloadPath = System.getProperty("user.dir") + "\\temp\\";
		String FILENAME=downloadPath + "Filecompare.txt"; 
		BufferedWriter bw = null;
		FileWriter fw = null;
		String line1 = "",line2="";
		int i=1;
		fw = new FileWriter(FILENAME);
		bw = new BufferedWriter(fw);
		boolean result=true;
	    try {
	    	BufferedReader br1 = new BufferedReader(new FileReader(filename1));
	    	BufferedReader br2 = new BufferedReader(new FileReader(filename2));
	
	    	bw.write("\n********Starting Comparision*********");
	    	bw.write("\nFile 1 : " + filename1);
	    	bw.write("\nFile 2 : " + filename2);	    	
	    	
            while ((line1 = br1.readLine()) != null ) {
                   	line2=br2.readLine();
            	if( (line1.equalsIgnoreCase(line2))==false)
            	{
            		bw.write("\nMismatch in Line Number :- "+ i );
            		bw.write("\nExpected one : " + line1);
            		bw.write("\nActual one   : " + line2);
            		result=false;            		
            	}	
            	i++;
         	}            
            bw.write("\n********Ending Comparision*********");
            if(result==true)
            	bw.write("\nNo difference in content between files");
    	    else
    	    	bw.write("\nDifference in content between files");
    	
            br1.close();
            br2.close();
            bw.close();
            fw.close();        
       /*   Encryption encryption=new Encryption();
           encryption.sendMailUsingGmail(ReadPropFile.getValue("sender_email"), ReadPropFile.getValue("sender_password1"), ReadPropFile.getValue("CompareReport_ToEmail"),"", "", Subject, 
            		" Hi All, \n\n Please find the attached file which is the output of two files comparison. \n\n Thanks, \n findd.io Team", FILENAME);
         */          
    	}   

 catch (IOException e) {
    e.printStackTrace();
    result=false;
}	  

	    if(result==true)
	    	System.out.println("No difference in content between files");
	    else
	    	System.out.println("Difference in content between files");
	    		
		return result; 
	}

}
