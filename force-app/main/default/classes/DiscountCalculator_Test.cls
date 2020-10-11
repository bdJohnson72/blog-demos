/**
 * Created by bjohnson on 10/4/20.
 */

@IsTest
private class DiscountCalculator_Test {
    @IsTest
    static void testSilverDiscount() {
        //given
        Account silverAccount = new Account(Name = 'silver', Customer_Tier__c = 'Silver');
        insert silverAccount;

        Opportunity opportunity = new Opportunity(AccountId = silverAccount.Id, Amount = 500.00);
        List<Opportunity> oppList = new List<Opportunity>{opportunity};
        Formula.recalculateFormulas(oppList);

        DiscountCalculator calculator = new DiscountCalculator(opportunity);
        //when
        Test.startTest();
        Decimal result = calculator.discountOpportunity();
        Test.stopTest();

        System.assertEquals(475.00, result, 'It should return a 5% discount');


    }
    @IsTest
    static void testGoldDiscount() {
        //given
        Account goldAccount = new Account(Name = 'Gold', Customer_Tier__c = 'Gold');
        insert goldAccount;

        Opportunity opportunity = new Opportunity(AccountId = goldAccount.Id, Amount = 1000.00);
        List<Opportunity> opplist = new List<Opportunity>{opportunity};

        Formula.recalculateFormulas(opplist);
        DiscountCalculator calculator = new DiscountCalculator(opportunity);

        //when
        Test.startTest();
        Decimal result = calculator.discountOpportunity();
        Test.stopTest();

        System.assertEquals(900.00, result, 'It should return a 10% discount');


    }


}