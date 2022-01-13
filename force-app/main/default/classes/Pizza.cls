/**
 * Created by brooks on 11/21/2020.
 */

public abstract  with sharing class Pizza {
    public String name {get; private set;}

    public Pizza(String name){
        this.name = name;
    }
    public abstract void preparePizza();

}