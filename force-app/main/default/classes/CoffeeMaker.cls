/**
 * Created by bjohnson on 9/26/20.
 */

public with sharing class CoffeeMaker {
    private CoffeeBeans beans;
    private Water water;

    public CoffeeMaker(CoffeeBeans beans, Water water){
        this.beans = beans;
        this.water = water;
    }

    public Coffee brewCoffee(){
        grindBeans();
        heatWater();
        return makeCoffee();

    }

    private void grindBeans(){
        System.debug('grinding the ' + beans.name);
    }

    private void heatWater(){
        System.debug('heating the water');
    }

    private Coffee makeCoffee(){
        System.debug('dripping the water on the ' + beans.name);
       Coffee coffee = new Coffee('Fresh Coffee');
        return coffee;

    }


}