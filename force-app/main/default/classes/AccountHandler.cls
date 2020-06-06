/**
 *@author bjohnson 
 *@date 5/17/2020
 */

public with sharing class AccountHandler {

    public static Account insertNewAccount(String accountName ){
        Account a = new Account();
        a.Name = accountName;
        Account secondAccount = new Account(Name = accountName);
        try{
            insert a;
            return a;
        }catch(Exception e){
            System.debug('Hello from the the catch block');
            System.debug('Message' +  e.getMessage());
            System.debug('Stack Trace '  + e.getStackTraceString());
            return null;
        }
    }
    public Account insertNewAccount2(String accountName){
        Account a = new Account(Name = accountName);
        return a;
    }

}