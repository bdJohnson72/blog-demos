/**
 * Created by brooks on 6/17/2021.
 */

public with sharing class CheesePizza implements IPizza{


    public void preparePizza() {
        System.debug('Preparing an amazing cheese pizza');
    }
}