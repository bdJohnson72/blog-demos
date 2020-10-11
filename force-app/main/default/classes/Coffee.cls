/**
 * Created by bjohnson on 9/26/20.
 */

public with sharing class Coffee {
 public String name {get; private set;}

 public Coffee(String name){
  this.name = name;
 }
}