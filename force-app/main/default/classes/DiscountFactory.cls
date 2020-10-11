/**
 * Created by bjohnson on 10/4/20.
 */

public with sharing class DiscountFactory {

    public static IDiscount getDiscount(String customerTier){
        Discounts__mdt discount_meta = [SELECT Class_To_Instantiate__c FROM Discounts__mdt
        WHERE Customer_Tier__c =: customerTier ];

        Type t = Type.forName(discount_meta.Class_To_Instantiate__c);
        IDiscount discount = (IDiscount)t.newInstance();
        return discount;
    }
}