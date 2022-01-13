/**
 * Created by brooks on 6/17/2021.
 */

public with sharing class MeatLoversPizza implements IPizza{


    public void preparePizza() {
        System.debug('Preparing a meat lovers pizza');
    }
}