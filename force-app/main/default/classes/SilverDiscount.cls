/**
 * Created by bjohnson on 10/4/20.
 */

public with sharing class SilverDiscount implements IDiscount{

    public Decimal calculateDiscount(Decimal oppAmount){
        return oppAmount - (oppAmount * .05);
    }
}