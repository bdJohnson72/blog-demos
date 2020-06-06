/**
 *@author bjohnson 
 *@date 5/22/2020
 */

public with sharing class LoopStructures {

    public static void whileLoop(Integer timesToRun){
        Integer index = 0;
        while (index < timesToRun){
            System.debug('Hello from the while loop ' + index);
            index ++;
        }
    }
    public static void doWhileLoop(Integer timesToRun){
        Integer index = 1;
        do {
            System.debug('Hello from the do condition ' + index  + ' Parameter = ' + timesToRun );
            index ++;
        } while (index < timesToRun);
    }

    public static void forLoop(){
        for (Integer i = 0; i < 10; i++){
            System.debug('Hello from the for loop');
        }
    }
    public static void forEach(){
        List<Lead> leadList = [SELECT Id, FirstName
        FROM Lead];

        for (Lead l : leadList){
            System.debug('The lead in the list is ' + l.id + ' '  + l.FirstName);
        }
    }
    public static void soqlForLoop(){
        for (Lead l : [SELECT Id, FirstName, LastName, CreatedDate
        FROM Lead
        WHERE CreatedDate = TODAY]){
            //code goes here
            System.debug('Lead Id = ' + l.CreatedDate);
        }
    }

}