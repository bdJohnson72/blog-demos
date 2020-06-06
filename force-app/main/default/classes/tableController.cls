/**
 *@author bjohnson 
 *@date 5/30/2020
 */

public with sharing class tableController {

    @AuraEnabled(Cacheable=true)
    public static List<Opportunity> getOpportunities(){
        return [SELECT Id, Name, Type, StageName, Amount, CloseDate,
                OwnerId, Owner.Name
        FROM Opportunity];
    }
}