/**
 * Created by bjohnson on 6/28/20.
 */

public with sharing class InterviewClass {

    public static void updateContactDescription(){
        List<Contact> contactsToUpdate = new List<Contact>();
        List<Contact> contactList = [SELECT Description
        FROM Contact
        ];

        for(Contact c : contactList){
            c.Description = 'Updated description';
            contactsToUpdate.add(c);
        }
        update contactsToUpdate;

    }
    @AuraEnabled
    public static void updateAccounts(List<Account> accountsToUpdate){
        List<Account> accountsForDML = new List<Account>();
        for(Account a : accountsToUpdate){
            a.Description = 'updated description';
            accountsForDML.add(a);
        }
        try{
            update accountsForDML;
        }catch(Exception e){
            System.debug(e.getStackTraceString());
        }
    }

}