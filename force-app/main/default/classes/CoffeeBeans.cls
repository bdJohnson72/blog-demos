/**
 * Created by bjohnson on 9/26/20.
 */

public with sharing class CoffeeBeans {
 public String name {get; private set;}

 public CoffeeBeans(String name){
  this.name = name;
 }
}