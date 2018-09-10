package com.src.Services;

public class Registrationfactory {
       private  Registrationfactory(){
    	
    }
    private static DbInterface di;
    public static DbInterface getInstance(){
    	di=new DbImpl();
    	return di;
    }
}
