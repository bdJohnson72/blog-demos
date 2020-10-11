/**
 * Created by bjohnson on 9/26/20.
 */

public with sharing class CoffeeDrinker {

    public static void drinkCoffee(Coffee coffee){

        System.debug('I am drinking a fresh cup of ' + coffee.name);

    }

}