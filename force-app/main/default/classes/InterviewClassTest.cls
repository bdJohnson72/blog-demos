/**
 * Created by bjohnson on 6/28/20.
 */

@IsTest
private class InterviewClassTest {
    @TestSetup
    static void testSetUp() {
        Account a = new Account(Name = 'Test Acc');
        insert a;
        Contact c = new Contact(FirstName = 'Test', LastName = 'Contact', AccountId = a.id);
        insert c;
    }

    @IsTest
    static void testAccountUpdate(){
        //given
        List<Account> accounts = [SELECT Id, Description
        FROM Account];
        //when
        Test.startTest();
        InterviewClass.updateAccounts(accounts);
        Test.stopTest();
        //then
        Account updatedAccount = [SELECT Description FROM Account LIMIT 1];
        System.assertEquals('updated description', updatedAccount.Description, 'Expected description field to be updated');
    }

    @IsTest
    static void testAccountUpdateError(){

    }
    @IsTest
    static void testUpdateContacts(){

        Test.startTest();
        //InterviewClass.updtCon();
        Test.stopTest();
        Contact updatedContact = [SELECT Id, Description
        FROM Contact LIMIT 1];
        System.assertEquals('Updated description', updatedContact.Description,
                'Description field not updated');
    }
}
