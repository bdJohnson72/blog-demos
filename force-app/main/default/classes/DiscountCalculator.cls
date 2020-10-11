/**
 * Created by bjohnson on 10/4/20.
 */

public with sharing class DiscountCalculator {
  private Opportunity opp;
  IDiscount discount;

    public DiscountCalculator(Opportunity opp){
        this.opp = opp;
        this.discount = DiscountFactory.getDiscount(opp.CustomerTier__c);


    }

    public Decimal discountOpportunity(){
        Decimal result = discount.calculateDiscount(this.opp.Amount);
        return result;
    }
}