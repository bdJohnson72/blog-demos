/**
 * Created by brooks on 11/21/2020.
 */

public with sharing class PizzaStore {
    private IPizza pizza;

    public PizzaStore(IPizza pizza) {
        this.pizza = pizza;

    }

    public IPizza orderPizza() {
       this.pizza.preparePizza();
        return this.pizza;
    }

}


